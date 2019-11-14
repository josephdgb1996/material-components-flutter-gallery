// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:collection';

import 'package:flutter/material.dart';

import '../data/gallery_options.dart';
import '../l10n/gallery_localizations.dart';

// Common constants between SlowMotionSetting and SettingsListItem.
const settingItemHeight = 56.0;
final settingItemBorderRadius = BorderRadius.circular(10);
const settingItemHeaderMargin = EdgeInsetsDirectional.fromSTEB(32, 0, 32, 8);
const settingItemHeaderPadding = EdgeInsetsDirectional.fromSTEB(16, 10, 8, 10);

class SlowMotionSetting extends StatelessWidget {
  const SlowMotionSetting({this.options, this.onOptionsChanged});

  final GalleryOptions options;
  final ValueChanged<GalleryOptions> onOptionsChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: settingItemHeaderMargin,
      height: settingItemHeight,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: settingItemBorderRadius),
        color: colorScheme.onBackground,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: settingItemHeaderPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    GalleryLocalizations.of(context).settingsSlowMotion,
                    style: textTheme.subhead.apply(
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Switch(
              activeColor: colorScheme.primary,
              value: options.timeDilation != 1.0,
              onChanged: (isOn) => onOptionsChanged(
                options.copyWith(timeDilation: isOn ? 10.0 : 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsListItem<T> extends StatefulWidget {
  SettingsListItem({
    Key key,
    @required this.title,
    @required this.options,
    @required this.selectedOption,
    @required this.onOptionChanged,
  }) : super(key: key);

  final String title;
  final LinkedHashMap<T, String> options;
  final T selectedOption;
  final ValueChanged<T> onOptionChanged;

  @override
  _SettingsListItemState createState() => _SettingsListItemState<T>();
}

class _SettingsListItemState<T> extends State<SettingsListItem<T>>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static const _expandDuration = Duration(milliseconds: 150);
  AnimationController _controller;
  Animation<double> _childrenHeightFactor;
  Animation<double> _headerChevronRotation;
  Animation<double> _headerSubtitleHeight;
  Animation<EdgeInsetsGeometry> _headerMargin;
  Animation<EdgeInsetsGeometry> _headerPadding;
  Animation<EdgeInsetsGeometry> _childrenPadding;
  Animation<BorderRadius> _headerBorderRadius;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _expandDuration, vsync: this);
    _childrenHeightFactor = _controller.drive(_easeInTween);
    _headerChevronRotation =
        Tween<double>(begin: 0, end: 0.5).animate(_controller);
    _headerMargin = EdgeInsetsGeometryTween(
      begin: settingItemHeaderMargin,
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerPadding = EdgeInsetsGeometryTween(
      begin: settingItemHeaderPadding,
      end: EdgeInsetsDirectional.fromSTEB(32, 10, 32, 10),
    ).animate(_controller);
    _headerSubtitleHeight =
        _controller.drive(Tween<double>(begin: 1.0, end: 0.0));
    _childrenPadding = EdgeInsetsGeometryTween(
      begin: EdgeInsets.symmetric(horizontal: 32),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerBorderRadius = BorderRadiusTween(
      begin: settingItemBorderRadius,
      end: BorderRadius.zero,
    ).animate(_controller);

    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild.
          });
        });
      }
    });
  }

  Widget _buildHeaderWithChildren(BuildContext context, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CategoryHeader(
          margin: _headerMargin.value,
          padding: _headerPadding.value,
          borderRadius: _headerBorderRadius.value,
          subtitleHeight: _headerSubtitleHeight,
          chevronRotation: _headerChevronRotation,
          title: widget.title,
          subtitle: widget.options[widget.selectedOption] ?? '',
          onTap: _handleTap,
        ),
        Padding(
          padding: _childrenPadding.value,
          child: ClipRect(
            child: Align(
              heightFactor: _childrenHeightFactor.value,
              child: child,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    final theme = Theme.of(context);

    final optionsList = <Widget>[];

    widget.options.forEach(
      (option, optionText) => optionsList.add(
        RadioListTile<T>(
          value: option,
          title: Text(
            optionText,
            style: theme.textTheme.body2.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          groupValue: widget.selectedOption,
          onChanged: (newOption) => widget.onOptionChanged(newOption),
          activeColor: Theme.of(context).colorScheme.primary,
          dense: true,
        ),
      ),
    );

    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildHeaderWithChildren,
      child: closed
          ? null
          : Container(
              margin: const EdgeInsetsDirectional.only(start: 24, bottom: 40),
              decoration: BoxDecoration(
                border: BorderDirectional(
                  start: BorderSide(
                    width: 2,
                    color: theme.colorScheme.background,
                  ),
                ),
              ),
              child: Column(
                children: optionsList,
              ),
            ),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    Key key,
    this.margin,
    this.padding,
    this.borderRadius,
    this.subtitleHeight,
    this.chevronRotation,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final String title;
  final String subtitle;
  final Animation<double> subtitleHeight;
  final Animation<double> chevronRotation;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: margin,
      height: settingItemHeight,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        color: colorScheme.secondary,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: textTheme.subhead.apply(
                        color: colorScheme.onSurface,
                      ),
                    ),
                    SizeTransition(
                      sizeFactor: subtitleHeight,
                      child: Text(
                        subtitle,
                        style: textTheme.overline.apply(
                          color: colorScheme.primary,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 8,
                  end: 32,
                ),
                child: RotationTransition(
                  turns: chevronRotation,
                  child: Icon(Icons.arrow_drop_down),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
