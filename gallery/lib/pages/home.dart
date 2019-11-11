// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data/demos.dart';
import '../l10n/gallery_localizations.dart';
import '../studies/crane/app.dart';
import '../studies/crane/colors.dart';
import '../studies/rally/app.dart';
import '../studies/rally/colors.dart';
import '../studies/shrine/app.dart';
import '../studies/shrine/colors.dart';
import '../studies/starter/app.dart';
import 'category_list_item.dart';

const _horizontalPadding = 32.0;
const _carouselPadding = 8.0;

const String shrineTitle = 'Shrine';
const String rallyTitle = 'Rally';
const String craneTitle = 'Crane';
const String homeCategoryMaterial = 'MATERIAL';
const String homeCategoryCupertino = 'CUPERTINO';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          header(
            context,
            Theme.of(context).colorScheme.primaryVariant,
            GalleryLocalizations.of(context).homeHeaderGallery,
          ),
          _Carousel(
            children: [
              _CarouselCard(
                title: shrineTitle,
                subtitle: GalleryLocalizations.of(context).shrineDescription,
                asset: 'assets/studies/shrine_card.png',
                assetDark: 'assets/studies/shrine_card_dark.png',
                textColor: kShrineBrown900,
                study: ShrineApp(),
              ),
              _CarouselCard(
                title: rallyTitle,
                subtitle: GalleryLocalizations.of(context).rallyDescription,
                textColor: RallyColors.accountColors[0],
                asset: 'assets/studies/rally_card.png',
                assetDark: 'assets/studies/rally_card_dark.png',
                study: RallyApp(),
              ),
              _CarouselCard(
                title: craneTitle,
                subtitle: GalleryLocalizations.of(context).craneDescription,
                asset: 'assets/studies/crane_card.png',
                assetDark: 'assets/studies/crane_card_dark.png',
                textColor: cranePurple700,
                study: CraneApp(),
              ),
              _CarouselCard(
                title: 'Baseline starter app', // TODO: Localize.
                subtitle: 'A responsive starter layout', // TODO: Localize.
                asset: 'assets/studies/starter_card.png',
                assetDark: 'assets/studies/starter_card_dark.png',
                textColor: Colors.black,
                study: StarterApp(),
              ),
            ],
          ),
          header(
            context,
            Theme.of(context).colorScheme.primary,
            GalleryLocalizations.of(context).homeHeaderCategories,
          ),
          CategoryListItem(
            title: homeCategoryMaterial,
            imageString: 'assets/icons/material/material.png',
            demos: materialDemos(context),
          ),
          CategoryListItem(
            title: homeCategoryCupertino,
            imageString: 'assets/icons/cupertino/cupertino.png',
            demos: cupertinoDemos(context),
          ),
          CategoryListItem(
            title: GalleryLocalizations.of(context).homeCategoryReference,
            imageString: 'assets/icons/reference/reference.png',
            demos: referenceDemos(context),
          ),
        ],
      ),
    );
  }

  Widget header(BuildContext context, Color color, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
        vertical: 16,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.display1.apply(color: color),
      ),
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel({Key key, this.children}) : super(key: key);

  final List<Widget> children;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  PageController _controller;
  int _currentPage = 0;

  static const _carouselHeight = 200.0 + 2 * _carouselPadding;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      // The viewPortFraction is calculated as the width of the device minus the
      // padding.
      final width = MediaQuery.of(context).size.width;
      final padding = (_horizontalPadding * 2) - (_carouselPadding * 2);
      _controller = PageController(
        initialPage: _currentPage,
        viewportFraction: (width - padding) / width,
      );
    }
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget builder(int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value;
        if (_controller.position.haveDimensions) {
          value = _controller.page - index;
        } else {
          // If haveDimensions is false, use _currentPage to calculate value.
          value = (_currentPage - index).toDouble();
        }
        // We want the peeking cards to be 160 in height and 0.38 helps
        // achieve that.
        value = (1 - (value.abs() * .38)).clamp(0, 1) as double;

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * _carouselHeight,
            child: child,
          ),
        );
      },
      child: widget.children[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _carouselHeight,
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        controller: _controller,
        itemCount: widget.children.length,
        itemBuilder: (context, index) => builder(index),
      ),
    );
  }
}

class _CarouselCard extends StatelessWidget {
  const _CarouselCard({
    Key key,
    this.title,
    this.subtitle,
    this.asset,
    this.assetDark,
    this.textColor,
    this.study,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String asset;
  final String assetDark;
  final Color textColor;
  final Widget study;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    final asset = isDark ? assetDark : this.asset;
    final textColor = isDark ? Colors.white.withOpacity(0.87) : this.textColor;

    return Container(
      margin: EdgeInsets.all(_carouselPadding),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => study,
              ),
            );
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              Ink.image(
                image: AssetImage(asset),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: textTheme.caption.apply(color: textColor),
                    ),
                    Text(
                      subtitle,
                      style: textTheme.overline.apply(color: textColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
