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
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/backdrop.dart';
import 'package:gallery/studies/crane/eat_form.dart';
import 'package:gallery/studies/crane/fly_form.dart';
import 'package:gallery/studies/crane/sleep_form.dart';
import 'package:gallery/studies/crane/theme.dart';

void main() => runApp(CraneApp());

class CraneApp extends StatefulWidget {
  @override
  _CraneAppState createState() => _CraneAppState();
}

class _CraneAppState extends State<CraneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crane',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: craneTheme.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      darkTheme: craneTheme.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      home: ApplyTextOptions(
        child: Backdrop(
          frontLayer: Container(),
          backLayer: [
            FlyForm(),
            SleepForm(),
            EatForm(),
          ],
          frontTitle: Text('CRANE'),
          backTitle: Text('MENU'),
        ),
      ),
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (context) => CraneApp(),
    fullscreenDialog: true,
  );
}
