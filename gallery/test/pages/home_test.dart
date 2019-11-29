import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/pages/backdrop.dart';

void main() {
  testWidgets('Home page hides settings semantics when closed', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: [GalleryLocalizations.delegate],
        home: ModelBinding(
          initialModel: GalleryOptions(
            textScaleFactor: 1.0,
          ),
          child: Backdrop(
            frontLayer: Text('Front'),
            backLayer: Text('Back'),
          ),
        ),
      ),
    );
    await tester.pump(Duration(seconds: 1));

    expect(find.bySemanticsLabel('Settings'), findsOneWidget);
    expect(find.bySemanticsLabel('Close settings'), findsNothing);
    expect(tester.getSemantics(find.text('Back')).label, 'Back');
    expect(tester.getSemantics(find.text('Front')).label, '');

    await tester.tap(find.bySemanticsLabel('Settings'));
    await tester.pump(Duration(seconds: 1));

    // The test no longer finds Setting and Close settings since the semantics
    // are excluded when settings mode is activated.
    // This was done so people could ready the settings page from top to
    // bottom by utilizing an invisible widget within the Settings Page.
    expect(tester.getSemantics(find.text('Back')).owner, null);
    expect(tester.getSemantics(find.text('Front')).label, 'Front');
  });
}
