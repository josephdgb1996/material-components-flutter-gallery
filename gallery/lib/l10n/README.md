# Localization

## Generating New Locale Messages
When adding new strings to be localized, update `intl_en_US.arb`, which
is used by this project as the template. From `gallery/`, run
`dart ../l10n_cli/bin/main.dart` , which will generate
`intl_en_US.xml`. This will be used by the internal translation console to
generate messages in the different locales.

## Generating New Locale Arb Files
Use the internal tool to create the `intl_<locale>.arb` files once the
translations are ready.

## Generating Flutter Localization Files
If new translations are ready and the `intl_<locale>.arb` files are already
available, run the following tool to generate all necessary
`messages_<locale>.dart` files and the `localizations_delegate.dart` file:

```dart
dart ${YOUR_FLUTTER_PATH}/dev/tools/localization/gen_l10n.dart \
    --template-arb-file=intl_en_US.arb \
    --output-localization-file=localizations_delegate.dart \
    --output-class=GalleryLocalizations
```

This ensures the generated `.dart` files updated with the latest translations.
