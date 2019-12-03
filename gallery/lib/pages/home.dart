// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:gallery/constants.dart';
import 'package:gallery/data/demos.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/pages/category_list_item.dart';
import 'package:gallery/pages/settings.dart';
import 'package:gallery/studies/crane/app.dart';
import 'package:gallery/studies/crane/colors.dart';
import 'package:gallery/studies/rally/app.dart';
import 'package:gallery/studies/rally/colors.dart';
import 'package:gallery/studies/shrine/app.dart';
import 'package:gallery/studies/shrine/colors.dart';
import 'package:gallery/studies/starter/app.dart';

const _horizontalPadding = 32.0;
const _carouselItemMargin = 8.0;
const _horizontalDesktopPadding = 81.0;
const _carouselHeightMin = 200.0 + 2 * _carouselItemMargin;

const String shrineTitle = 'Shrine';
const String rallyTitle = 'Rally';
const String craneTitle = 'Crane';
const String homeCategoryMaterial = 'MATERIAL';
const String homeCategoryCupertino = 'CUPERTINO';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var carouselHeight = _carouselHeight(.7, context);

    FocusNode _topFocusNode = FocusNode();
    FocusNode _endFocusNode = FocusNode();

    final carouselCards = <_CarouselCard>[
      _CarouselCard(
        title: shrineTitle,
        subtitle: GalleryLocalizations.of(context).shrineDescription,
        asset: 'assets/studies/shrine_card.png',
        assetDark: 'assets/studies/shrine_card_dark.png',
        textColor: shrineBrown900,
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
        title: GalleryLocalizations.of(context).starterAppTitle,
        subtitle: GalleryLocalizations.of(context).starterAppDescription,
        asset: 'assets/studies/starter_card.png',
        assetDark: 'assets/studies/starter_card_dark.png',
        textColor: Colors.black,
        study: StarterApp(),
      ),
    ];

    if (isDisplayDesktop(context)) {
      final desktopCategoryItems = <_DesktopCategoryItem>[
        _DesktopCategoryItem(
          title: homeCategoryMaterial,
          imageString: 'assets/icons/material/material.png',
          demos: materialDemos(context),
        ),
        _DesktopCategoryItem(
          title: homeCategoryCupertino,
          imageString: 'assets/icons/cupertino/cupertino.png',
          demos: cupertinoDemos(context),
        ),
        _DesktopCategoryItem(
          title: GalleryLocalizations.of(context).homeCategoryReference,
          imageString: 'assets/icons/reference/reference.png',
          demos: referenceDemos(context),
        ),
      ];

      return Scaffold(
        body: ListView(
          padding: EdgeInsetsDirectional.only(
            start: _horizontalDesktopPadding,
            top: (isDisplayDesktop(context)) ? 5 : 21,
            end: _horizontalDesktopPadding,
          ),
          children: [
            SizedBox(height: 5),
            ExcludeSemantics(child: _GalleryHeader()),
            SizedBox(height: 11),
            Container(
              height: carouselHeight,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: spaceBetween(30, carouselCards),
              ),
            ),
            _CategoriesHeader(),
            Container(
              height: 585,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: spaceBetween(28, desktopCategoryItems),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 81,
                top: 109,
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.end,
                children: [
                  SettingsAbout(),
                  SettingsFeedback(),
                  MergeSemantics(
                    child: SettingsAttribution(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: _AnimatedHomePage(
          carouselCards: carouselCards,
        ),
      );
    }
  }

  List<Widget> spaceBetween(double paddingBetween, List<Widget> children) {
    return [
      for (int index = 0; index < children.length; index++) ...[
        Flexible(
          child: children[index],
        ),
        if (index < children.length - 1) SizedBox(width: paddingBetween),
      ],
    ];
  }
}

class _GalleryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(
      color: Theme.of(context).colorScheme.primaryVariant,
      text: GalleryLocalizations.of(context).homeHeaderGallery,
    );
  }
}

class _CategoriesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(
      color: Theme.of(context).colorScheme.primary,
      text: GalleryLocalizations.of(context).homeHeaderCategories,
    );
  }
}

class Header extends StatelessWidget {
  const Header({this.color, this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: isDisplayDesktop(context) ? 63 : 29,
        bottom: isDisplayDesktop(context) ? 21 : 11,
      ),
      child: InkWell(
        focusColor: Colors.pink,
        onTap: () {},
        splashColor: Colors.transparent,
        child: Text(
          text,
          style: Theme.of(context).textTheme.display1.apply(
                color: color,
                fontSizeDelta:
                    isDisplayDesktop(context) ? desktopDisplay1FontDelta : 0,
              ),
        ),
      ),
    );
  }
}

class _AnimatedHomePage extends StatefulWidget {
  const _AnimatedHomePage({Key key, this.carouselCards}) : super(key: key);

  final List<Widget> carouselCards;

  @override
  _AnimatedHomePageState createState() => _AnimatedHomePageState();
}

class _AnimatedHomePageState extends State<_AnimatedHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Timer _launchTimer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    // Wait for the splash page animation to be finished.
    _launchTimer = Timer(
        const Duration(
          seconds: launchTimerDurationInSeconds,
          milliseconds: splashPageAnimationDurationInMilliseconds,
        ), () {
      _animationController.forward();
    });
  }

  @override
  dispose() {
    _animationController.dispose();
    _launchTimer?.cancel();
    _launchTimer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: ExcludeSemantics(child: _GalleryHeader()),
        ),
        _Carousel(
          children: widget.carouselCards,
          animationController: _animationController,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: _horizontalPadding),
          child: _CategoriesHeader(),
        ),
        _AnimatedCategoryItem(
          startDelayFraction: 0.00,
          controller: _animationController,
          child: CategoryListItem(
            title: homeCategoryMaterial,
            imageString: 'assets/icons/material/material.png',
            demos: materialDemos(context),
          ),
        ),
        _AnimatedCategoryItem(
          startDelayFraction: 0.05,
          controller: _animationController,
          child: CategoryListItem(
            title: homeCategoryCupertino,
            imageString: 'assets/icons/cupertino/cupertino.png',
            demos: cupertinoDemos(context),
          ),
        ),
        _AnimatedCategoryItem(
          startDelayFraction: 0.10,
          controller: _animationController,
          child: CategoryListItem(
            title: GalleryLocalizations.of(context).homeCategoryReference,
            imageString: 'assets/icons/reference/reference.png',
            demos: referenceDemos(context),
          ),
        ),
      ],
    );
  }
}

class _DesktopCategoryItem extends StatelessWidget {
  const _DesktopCategoryItem({
    this.title,
    this.imageString,
    this.demos,
  });

  final String title;
  final String imageString;
  final List<GalleryDemo> demos;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      color: colorScheme.surface,
      child: Semantics(
        container: true,
        child: DefaultFocusTraversal(
          policy: WidgetOrderFocusTraversalPolicy(),
          child: Column(
            children: [
              _DesktopCategoryHeader(
                title: title,
                imageString: imageString,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: colorScheme.background,
              ),
              Flexible(
                child: Focus(
                  child: ListView(
                    children: [
                      const SizedBox(height: 12),
                      for (GalleryDemo demo in demos)
                        CategoryDemoItem(
                          demo: demo,
                        ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DesktopCategoryHeader extends StatelessWidget {
  const _DesktopCategoryHeader({
    this.title,
    this.imageString,
  });
  final String title;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: colorScheme.onBackground,
      child: InkWell(
        focusColor: Colors.pink,
        splashColor: Colors.transparent,
        onTap: () {},
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                imageString,
                width: 64,
                height: 64,
                excludeFromSemantics: true,
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 8),
                child: Semantics(
                  header: true,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline.apply(
                          color: colorScheme.onSurface,
                        ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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

/// Animates the category item to stagger in. The [_AnimatedCategoryItem.startDelayFraction]
/// gives a delay in the unit of a fraction of the whole animation duration,
/// which is defined in [_AnimatedHomePageState].
class _AnimatedCategoryItem extends StatelessWidget {
  _AnimatedCategoryItem({
    Key key,
    double startDelayFraction,
    @required this.controller,
    @required this.child,
  })  : topPaddingAnimation = Tween(
          begin: 60.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000 + startDelayFraction,
              0.400 + startDelayFraction,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> topPaddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.only(top: topPaddingAnimation.value),
          child: child,
        );
      },
      child: child,
    );
  }
}

/// Animates the carousel to come in from the right.
class _AnimatedCarousel extends StatelessWidget {
  _AnimatedCarousel({
    Key key,
    @required this.child,
    @required this.controller,
  })  : startPositionAnimation = Tween(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.200,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> startPositionAnimation;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SizedBox(height: _carouselHeight(.4, context)),
          AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return PositionedDirectional(
                start: constraints.maxWidth * startPositionAnimation.value,
                child: child,
              );
            },
            child: Container(
              height: _carouselHeight(.4, context),
              width: constraints.maxWidth,
              child: child,
            ),
          ),
        ],
      );
    });
  }
}

/// Animates a carousel card to come in from the right.
class _AnimatedCarouselCard extends StatelessWidget {
  _AnimatedCarouselCard({
    Key key,
    @required this.child,
    @required this.controller,
  })  : startPaddingAnimation = Tween(
          begin: _horizontalPadding,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.900,
              1.000,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> startPaddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsetsDirectional.only(
            start: startPaddingAnimation.value,
          ),
          child: child,
        );
      },
      child: child,
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel({
    Key key,
    this.children,
    this.animationController,
  }) : super(key: key);

  final List<Widget> children;
  final AnimationController animationController;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel>
    with SingleTickerProviderStateMixin {
  PageController _controller;
  int _currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      // The viewPortFraction is calculated as the width of the device minus the
      // padding.
      final width = MediaQuery.of(context).size.width;
      final padding = (_horizontalPadding * 2) - (_carouselItemMargin * 2);
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
    final carouselCard = AnimatedBuilder(
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
        value = (1 - (value.abs() * .38)).clamp(0, 1).toDouble();
        value = Curves.easeOut.transform(value);

        return Center(
          child: Transform(
            transform: Matrix4.diagonal3Values(1.0, value, 1.0),
            alignment: Alignment.center,
            child: child,
          ),
        );
      },
      child: widget.children[index],
    );

    // We only want the second card to be animated.
    if (index == 1) {
      return _AnimatedCarouselCard(
        child: carouselCard,
        controller: widget.animationController,
      );
    } else {
      return carouselCard;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _AnimatedCarousel(
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
      controller: widget.animationController,
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
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;
    final asset = isDark ? assetDark : this.asset;
    final textColor = isDark ? Colors.white.withOpacity(0.87) : this.textColor;

    return Container(
      margin:
          EdgeInsets.all(isDisplayDesktop(context) ? 0 : _carouselItemMargin),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          focusColor: Colors.pink,
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => _StudyWrapper(study: study),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: textTheme.caption.apply(color: textColor),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subtitle,
                      style: textTheme.overline.apply(color: textColor),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
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

double _carouselHeight(double scaleFactor, BuildContext context) => math.max(
    _carouselHeightMin *
        GalleryOptions.of(context).textScaleFactor(context) *
        scaleFactor,
    _carouselHeightMin);

/// Wrap the studies with this to display a back button and allow the user to
/// exit them at any time.
class _StudyWrapper extends StatelessWidget {
  const _StudyWrapper({Key key, this.study}) : super(key: key);

  final Widget study;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ApplyTextOptions(
      child: Stack(
        children: [
          Semantics(
            sortKey: OrdinalSortKey(1),
            child: study,
          ),
          Semantics(
            sortKey: OrdinalSortKey(0),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: IconTheme(
                    data: IconThemeData(color: colorScheme.onPrimary),
                    child: BackButtonIcon(),
                  ),
                  label: Text(
                    MaterialLocalizations.of(context).backButtonTooltip,
                    style: textTheme.button.apply(color: colorScheme.onPrimary),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
