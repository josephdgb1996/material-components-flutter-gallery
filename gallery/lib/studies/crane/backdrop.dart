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

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/crane/border_tab_indicator.dart';
import 'package:gallery/studies/crane/colors.dart';
import 'package:gallery/studies/crane/item_cards.dart';
import 'package:meta/meta.dart';

class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key key,
    this.title,
    this.index,
  }) : super(key: key);

  final String title;
  final int index;

  static const frontLayerBorderRadius = 16.0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);

    return Focus(
      debugLabel: '_FrontLayer',
      child: DefaultFocusTraversal(
        policy: ReadingOrderTraversalPolicy(),
        child: PhysicalShape(
          elevation: 16,
          color: cranePrimaryWhite,
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(frontLayerBorderRadius),
                topRight: Radius.circular(frontLayerBorderRadius),
              ),
            ),
          ),
          child: ListView(
            padding: isDesktop
                ? EdgeInsets.symmetric(horizontal: 120, vertical: 22)
                : EdgeInsets.all(20),
            children: [
              Text(title, style: Theme.of(context).textTheme.subtitle),
              SizedBox(height: 20),
              ItemCards(index: index),
            ],
          ),
        ),
      ),
    );
  }
}

/// Builds a Backdrop.
///
/// A Backdrop widget has two layers, front and back. The front layer is shown
/// by default, and slides down to show the back layer, from which a user
/// can make a selection. The user can also configure the titles for when the
/// front or back layer is showing.
class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final List<Widget> backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    @required this.frontLayer,
    @required this.backLayer,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(frontLayer != null),
        assert(backLayer != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop> with TickerProviderStateMixin {
  TabController _tabController;
  Animation<Offset> _flyLayerOffset;
  Animation<Offset> _sleepLayerOffset;
  Animation<Offset> _eatLayerOffset;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Offsets to create a gap between front layers.
    _flyLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0, 0), end: Offset(-0.05, 0)));

    _sleepLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0.05, 0), end: Offset(0, 0)));

    _eatLayerOffset = _tabController.animation
        .drive(Tween<Offset>(begin: Offset(0.10, 0), end: Offset(0.05, 0)));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabs(int tabIndex) {
    _tabController.animateTo(tabIndex,
        duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final textScaleFactor = GalleryOptions.of(context).textScaleFactor(context);

    return DefaultFocusTraversal(
      policy: WidgetOrderFocusTraversalPolicy(),
      child: FocusScope(
        debugLabel: 'inside backdrop',
        child: Material(
          color: cranePurple800,
          child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Scaffold(
              backgroundColor: cranePurple800,
              appBar: AppBar(
                brightness: Brightness.dark,
                elevation: 0,
                titleSpacing: 0,
                flexibleSpace: Focus(
                  autofocus: true,
//                  skipTraversal: true,
                  child: CraneAppBar(
                    tabController: _tabController,
                    tabHandler: _handleTabs,
                  ),
                ),
              ),
              body: Stack(
                children: [
                  BackLayer(
                    tabController: _tabController,
                    backLayers: widget.backLayer,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: isDesktop
                          ? 60 + 20 * textScaleFactor / 2
                          : 175 + 140 * textScaleFactor / 2,
                    ),
                    child: TabBarView(
                      physics: isDesktop
                          ? NeverScrollableScrollPhysics()
                          : null, // use default TabBarView physics
                      controller: _tabController,
                      children: [
                        SlideTransition(
                          position: _flyLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneFlySubhead,
                            index: 0,
                          ),
                        ),
                        SlideTransition(
                          position: _sleepLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneSleepSubhead,
                            index: 1,
                          ),
                        ),
                        SlideTransition(
                          position: _eatLayerOffset,
                          child: _FrontLayer(
                            title: GalleryLocalizations.of(context)
                                .craneEatSubhead,
                            index: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Iterable<E> mapIndexed<E, T>(
    Iterable<T> items, E Function(int index, T item) f) sync* {
  var index = 0;

  for (final item in items) {
    yield f(index, item);
    index = index + 1;
  }
}

class BackLayer extends StatefulWidget {
  final List<Widget> backLayers;
  final TabController tabController;

  const BackLayer({Key key, this.backLayers, this.tabController})
      : super(key: key);

  @override
  _BackLayerState createState() => _BackLayerState();
}

class _BackLayerState extends State<BackLayer> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultFocusTraversal(
      policy: WidgetOrderFocusTraversalPolicy(),
      child: IndexedStack(
        index: widget.tabController.index,
        children: mapIndexed(
            widget.backLayers,
            (index, dynamic child) => Focus(
                  canRequestFocus: index == widget.tabController.index,
                  debugLabel: 'STACK $index',
                  child: child as Widget,
                )).toList(),
      ),
    );
  }
}

class CraneAppBar extends StatefulWidget {
  final Function(int) tabHandler;
  final TabController tabController;

  const CraneAppBar({Key key, this.tabHandler, this.tabController})
      : super(key: key);

  @override
  _CraneAppBarState createState() => _CraneAppBarState();
}

class _CraneAppBarState extends State<CraneAppBar> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final textScaleFactor = GalleryOptions.of(context).textScaleFactor(context);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isDesktop ? 120 : 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExcludeSemantics(
              child: Image.asset(
                'assets/crane/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 24),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                  ),
                  child: TabBar(
                    indicator: BorderTabIndicator(
                      indicatorHeight: isDesktop ? 28 : 32,
                      textScaleFactor: textScaleFactor,
                    ),
                    controller: widget.tabController,
                    labelPadding: isDesktop
                        ? const EdgeInsets.symmetric(horizontal: 32)
                        : EdgeInsets.zero,
                    isScrollable: isDesktop, // left-align tabs on desktop
                    labelStyle: Theme.of(context).textTheme.button,
                    labelColor: cranePrimaryWhite,
                    unselectedLabelColor: cranePrimaryWhite.withOpacity(.6),
                    onTap: (index) => widget.tabController.animateTo(
                      index,
                      duration: const Duration(milliseconds: 300),
                    ),
                    tabs: [
                      Focus(
//                          autofocus: true,
//                          skipTraversal: true,
                          debugLabel: 'flyTab',
                          child: Tab(
                              text: GalleryLocalizations.of(context).craneFly)),
                      Tab(text: GalleryLocalizations.of(context).craneSleep),
                      Tab(text: GalleryLocalizations.of(context).craneEat),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
