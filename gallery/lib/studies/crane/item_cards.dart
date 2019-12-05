// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/layout/highlight_focus.dart';
import 'package:gallery/studies/crane/model/data.dart';
import 'package:gallery/studies/crane/model/destination.dart';

class ItemCards extends StatefulWidget {
  final int index;

  const ItemCards({Key key, this.index}) : super(key: key);

  static const totalColumns = 4;

  @override
  _ItemCardsState createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  List<Destination> flyDestinations;
  List<Destination> sleepDestinations;
  List<Destination> eatDestinations;

  List<Widget> _buildDestinationCards({int listIndex}) {
    final List<Destination> destinations = [
      if (listIndex == 0) ...flyDestinations,
      if (listIndex == 1) ...sleepDestinations,
      if (listIndex == 2) ...eatDestinations,
    ];

    debugDumpFocusTree();

    return destinations
        .map(
          (d) => HighlightFocus(
            debugLabel: 'DestinationCard: ${d.destination}',
            highlightColor: Colors.red.withOpacity(0.5),
            onPressed: () => print('pressed'),
            child: RepaintBoundary(
              child: _DestinationCard(destination: d),
            ),
          ),
        )
        .toList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // We use didChangeDependencies because the initialization involves an
    // InheritedWidget (for localization). However, we don't want destinations
    // to be shuffled when, say, resizing the window.
    print('here $flyDestinations');
    if (flyDestinations == null) {
      flyDestinations = getFlyDestinations(context)..shuffle();
      sleepDestinations = getSleepDestinations(context)..shuffle();
      eatDestinations = getEatDestinations(context)..shuffle();
    }
  }

  @override
  Widget build(BuildContext context) {
//    debugDumpFocusTree();
    final isDesktop = isDisplayDesktop(context);
    final List<Widget> destinationCards =
        _buildDestinationCards(listIndex: widget.index);

    if (isDesktop) {
      var columns = List<List<Widget>>(ItemCards.totalColumns);
      for (var i = 0; i < destinationCards.length; i++) {
        final col = i % ItemCards.totalColumns;

        if (columns[col] == null) {
          columns[col] = List<Widget>();
        }

        columns[col].add(
          // TODO: determine why this is isn't always respected
          Semantics(
            sortKey: OrdinalSortKey(i.toDouble(), name: 'destination'),
            child: destinationCards[i],
          ),
        );
      }

      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var column in columns)
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: Column(
                  children: column,
                ),
              ),
            )
        ],
      );
    } else {
      return Column(children: destinationCards);
    }
  }
}

class _DestinationCard extends StatelessWidget {
  _DestinationCard({this.destination}) : assert(destination != null);
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    final imageWidget = Semantics(
      child: ExcludeSemantics(
        child: Image.asset(
          destination.assetName,
          fit: BoxFit.cover,
        ),
      ),
      label: destination.assetSemanticLabel,
    );

    final isDesktop = isDisplayDesktop(context);
    final textTheme = Theme.of(context).textTheme;

    if (isDesktop) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Semantics(
          container: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                child: imageWidget,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  destination.destination,
                  style: textTheme.subhead,
                ),
              ),
              Text(
                destination.subtitle(context),
                semanticsLabel: destination.subtitleSemantics(context),
                style: textTheme.subtitle,
              ),
            ],
          ),
        ),
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.only(end: 8),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              child: SizedBox(
                height: 60,
                width: 60,
                child: imageWidget,
              ),
            ),
            title: Text(destination.destination, style: textTheme.subhead),
            subtitle: Text(
              destination.subtitle(context),
              semanticsLabel: destination.subtitleSemantics(context),
              style: textTheme.subtitle,
            ),
          ),
          Divider(),
        ],
      );
    }
  }
}
