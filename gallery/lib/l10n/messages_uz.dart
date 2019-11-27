// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uz locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'uz';

  static m0(value) =>
      "Bu ilovaning manba kodini koʻrish uchun bu yerga kiring: ${value}.";

  static m1(title) => "${title} sahifasi uchun pleysholder";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Hech qancha restoran topilmadi', one: '1 ta restoran', other: '${totalRestaurants} ta restoran')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Uzluksiz', one: '1 toʻxtovli', other: '${numberOfStops} toʻxtovli')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Mavjud joylar topilmadi', one: '1 ta joy mavjud', other: '${totalProperties} ta joy mavjud')}";

  static m5(value) => "${value}-band";

  static m6(name, phoneNumber) => "${name} telefoni raqami: ${phoneNumber}";

  static m7(value) => "Siz tanlagan qiymat: \"${value}\"";

  static m8(accountName, accountNumber, amount) =>
      "${accountNumber} raqamli ${accountName} hisobida ${amount} bor.";

  static m9(amount) =>
      "Siz bu oy bankomatlar komissiyasi uchun ${amount} sarfladingiz";

  static m10(percent) =>
      "Juda yaxshi! Bu oy hisobingizda oldingi oyga nisbatan ${percent} koʻp mablagʻ bor.";

  static m11(percent) =>
      "Diqqat! Bu oy budjetingizdan ${percent} sarfladingiz.";

  static m12(amount) => "Bu hafta restoranlar uchun ${amount} sarfladingiz.";

  static m13(count) =>
      "${Intl.plural(count, one: 'Soliq imtiyozlaringizni oshiring! Noaniq 1 ta tranzaksiyani turkumlang.', other: 'Soliq imtiyozlaringizni oshiring! Noaniq ${count} ta tranzaksiyani turkumlang.')}";

  static m14(billName, date, amount) =>
      "${billName} uchun ${date} sanasigacha ${amount} toʻlash kerak.";

  static m15(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} uchun ajratilgan ${amountTotal} dan ${amountUsed} ishlatildi, qolgan balans: ${amountLeft}";

  static m16(quantity) =>
      "${Intl.plural(quantity, zero: 'HECH NIMA', one: '1 TA ELEMENT', other: '${quantity} TA ELEMENT')}";

  static m17(price) => "x ${price}";

  static m18(quantity) => "Soni: ${quantity}";

  static m19(value) => "${value}-band";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Github omboridan Flutter namunalari"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Hisob"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Signal"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Taqvim"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Fikrlar"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("TUGMA"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Yaratish"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Velosipedda"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kamin"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Katta"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Oʻrtacha"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kichik"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Chiroqlarni yoqish"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Kir yuvish mashinasi"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("QAHRABO RANG"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("KOʻK"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("MOVIY KULRANG"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("JIGARRANG"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ZANGORI"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TOʻQ APELSINRANG"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TOʻQ SIYOHRANG"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("YASHIL"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("KULRANG"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("TOʻQ KOʻK"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("HAVORANG"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("OCH YASHIL"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("OCH YASHIL"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("TOʻQ SARIQ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PUSHTI"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("BINAFSHARANG"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("QIZIL"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("MOVIY"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("SARIQ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Sayohatlar uchun moslangan ilova"),
        "craneEat": MessageLookupByLibrary.simpleMessage("OVQATLAR"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, Italiya"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, AQSH"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordova, Argentina"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portlend, AQSH"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Parij, Fransiya"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Janubiy Koreya"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Sietl, AQSH"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Neshvill, AQSH"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, AQSH"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Ispaniya"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Turli manzillardagi restoranlar"),
        "craneFly": MessageLookupByLibrary.simpleMessage("UCHISH"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, AQSH"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Katta Sur, AQSH"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Qohira, Misr"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, AQSH"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indoneziya"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Xumbu vodiysi, Nepal"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu-Pikchu, Peru"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv orollari"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitsnau, Shveytsariya"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Madrid, Ispaniya"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Rashmor togʻi, AQSH"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Gavana, Kuba"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Turli manzillarga parvozlar"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Sanani tanlang"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Sanalarni tanlang"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Yakuniy manzilni tanlang"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Tamaddixonalar"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Joylashuvni tanlang"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "Boshlangʻich manzilni tanlang"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vaqtni tanlang"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Sayohatchilar"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("UYQU"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv orollari"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, AQSH"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Qohira, Misr"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taypey, Tayvan"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu-Pikchu, Peru"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Gavana, Kuba"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitsnau, Shveytsariya"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Katta Sur, AQSH"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, AQSH"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugaliya"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksika"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneSleepProperties": m4,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("Turli manzillardagi joylar"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Ruxsat berish"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Olmali pirog"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Bekor qilish"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Chizkeyk"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Shokoladli brauni"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Quyidagi roʻyxatdan sevimli desertingizni tanlang. Tanlovingiz asosida biz yaqin-atrofdagi tavsiya etiladigan yemakxonalar roʻyxatini tuzamiz."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Bekor qilish"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ruxsat berilmasin"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Sevimli desertingizni tanlang"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Joriy joylashuvingiz xaritada chiqadi va yoʻnalishlarni aniqlash, yaqin-atrofdagi qidiruv natijalari, qolgan sayohat vaqtlarini chiqarish uchun kerak boʻladi."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Ilovalardan foydalanishdan oldin “Xaritalar” ilovasiga joylashuv axborotidan foydalanishga ruxsat berasizmi?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Tugma"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Orqa fon bilan"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Bildirishnomani koʻrsatish"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Amal chiplari asosiy kontentga oid amallarni faollashtiradigan parametrlar toʻplamini ifodalaydi. Amal chiplari dinamik tarzda chiqib, inteyfeysni boyitadi."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Amal elementi"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ogohlantiruvchi muloqot oynasi foydalanuvchini u eʼtibor qaratishi   lozim boʻlgan voqealar yuz berganda ogohlantiradi. Unda sarlavha va mavjud harakatlar roʻyxati boʻlishi mumkin."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnoma"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sarlavhali bildirishnoma"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Ekranning pastki qismidagi navigatsiya panelida xizmatning uchdan beshtagacha qismini joylashtirish mumkin. Ularning har biriga alohida belgi va matn (ixtiyoriy) kiritiladi. Foydalanuvchi belgilardan biriga bossa, kerakli qism ochiladi."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Doimiy yorliqlar"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Tanlangan yorliq"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oson ochish uchun ekran pastidagi navigatsiya"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Ekran pastidagi navigatsiya"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Kiritish"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("QUYI EKRANNI CHIQARISH"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Yuqori sarlavha"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal quyi ekrandan menyu yoki muloqot oynasi bilan birgalikda foydalanish mumkin. Bunday ekran ochiqligida ilovaning boshqa elementlaridan foydalanish imkonsiz."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal quyi ekran"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Doimiy quyi ekranda ilovadagi qoʻshimcha maʼlumotlar chiqadi. Bunday ekran doim ochiq turadi, hatto foydalanuvchi ilovaning boshqa qismlari bilan ishlayotgan paytda ham."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Doimiy quyi ekran"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Doimiy va modal quyi ekranlar"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Quyi ekran"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Matn maydonchalari"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yassi, qavariq, atrofi chizilgan va turli xil"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Tugmalar"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kiritish, xususiyat yoki amalni aks etuvchi ixcham elementlar"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Elementlar"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Tanlov chiplari toʻplamdagi variantlardan birini aks ettiradi. Ular tavsif matni yoki turkumdan iborat boʻladi."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Tanlov chipi"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Kod namunasi"),
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design ranglar majmuasini taqdim qiluvchi rang va gradiyentlar uchun konstantalar"),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Barcha standart ranglar"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Ranglar"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Harakatlar sahifasi bildirishnomalarning maxsus uslubi boʻlib, unda foydalanuvchining joriy matnga aloqador ikki yoki undan ortiq tanlovlari majmuasi koʻrsatiladi. Harakatlar sahifasida sarlavha, qoʻshimcha xabar va harakatlar roʻyxati boʻlishi mumkin."),
        "demoCupertinoActionSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Harakatlar keltirilgan sahifa"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Faqat bildirishnoma tugmalari"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tugmali bildirishnomalar"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ogohlantiruvchi muloqot oynasi foydalanuvchini u eʼtibor qaratishi lozim boʻlgan voqealar yuz berganda ogohlantiradi. Unda sarlavha, kontent va mavjud harakatlar roʻyxati boʻlishi mumkin. Sarlavha matn tepasida, harakatlar esa ularning ostida joylashadi."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnoma"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Sarlavhali bildirishnoma"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi bildirishnomali muloqot oynasi"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi tugma. Unda bosganda chiqadigan va yoʻqoladigan matn yoki belgi boʻladi. Orqa fon boʻlishi ham mumkin."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS uslubidagi tugmalar"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tugmalar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Bir nechta variantdan faqat bittasini belgilashda ishlatiladi. Bir element tanlansa, qolgan tanlov avtomatik yechiladi."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-uslubidagi tanlov elementlari"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentlangan tanlov elementlari"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oddiy, bildirishnoma va butun ekran"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Muloqot oynalari"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API hujjatlari"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtr chiplari kontentni teglar yoki tavsif soʻzlar bilan filtrlaydi."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtr chipi"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tekis tugmalarni bossangiz, ular koʻtarilmaydi. Uning oʻrniga siyohli dogʻ paydo boʻladi. Bu tugmalardan asboblar panelida va muloqot oynalarida foydalaning yoki ularni maydonga kiriting"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tekis tugma"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Erkin harakatlanuvchi amal tugmasi halqa shaklidagi tugma boʻlib, u boshqa kontentlarning tagida joylashadi va ilovadagi eng muhim harakatlarni belgilash imkonini beradi."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Erkin harakatlanuvchi amal tugmasi"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog xossasi butun ekran rejimidagi modal muloqot oynasida keyingi sahifa borligini koʻrsatadi"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Butun ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Butun ekran"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Axborot"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Kiritish chiplari obyekt (shaxs, joy yoki narsa) haqida umumiy axborot beradi yoki chatdagi ixcham matn shaklida chiqaradi."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Kiritish chipi"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL ochilmadi:"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Parametrlar"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Atrofi chizilgan tugmani bosganda shaffof boʻladi va koʻtariladi. Ular odatda qavariq tugmalar bilan biriktiriladi va ikkinchi harakat, yaʼni muqobilini koʻrsatish uchun ishlatiladi."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Atrofi chizilgan tugma"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Qavariq tugmalar yassi maketni qavariqli qilish imkonini beradi. Katta va keng sahifalarda koʻzga tez tashlanadigan boʻladi"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Qavariq tugma"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Oddiy muloqot oynasida foydalanuvchiga tanlash uchun bir nechta variant beriladi. Oynada sarlavha boʻlsa, u variantlar ustida joylashadi."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Oddiy"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Varaqlarda turli ekranlardagi kontent, axborot toʻplamlari va boshqa amallar jamlanadi."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alohidadan chiqadigan varaqlar"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Varaqlar"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Matn kiritish maydonchalari yordamida foydalanuvchilar grafik interfeysga matn kirita olishadi. Ular odatda shakl va muloqot oynalari shaklida chiqadi."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Parolni kiriting."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - AQSH telefon raqamini kiriting."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Yuborishdan oldin qizil bilan ajratilgan xatolarni tuzating."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolni berkitish"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Qisqa yozing. Bu shunchaki matn namunasi."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Tarjimayi hol"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Ism*"),
        "demoTextFieldNameHasPhoneNumber": m6,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ismni kiriting."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 ta belgidan oshmasin."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Faqat alifbodagi harflarni kiriting."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Parol*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Parollar mos kelmadi"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefon raqami*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* kiritish shart"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Parolni qayta kiriting*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Maosh"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolni koʻrsatish"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("YUBORISH"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Harf va raqamlarni tahrirlash uchun bitta qator"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Oʻzingiz haqingizda aytib bering (masalan, nima ish qilishingiz yoki qanday hobbilaringiz borligini yozing)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Matn maydonchalari"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Ismingiz nima?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Qaysi raqamga telefon qilib sizni topamiz?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Email manzilingiz"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Belgilash/olib tashlash tugmasi bilan oʻxshash parametrlarni guruhlash mumkin. Belgilash/olib tashlash tugmasiga aloqador guruhlar bitta umumiy konteynerda boʻlishi lozim."),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Belgilash/olib tashlash tugmalari"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design ichidagi har xil shriftlar uchun izoh."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Barcha standart matn uslublari"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Matn sozlamalari"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Hisob qoʻshish"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ROZIMAN"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ROZI EMASMAN"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Qoralama bekor qilinsinmi?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Butun ekran rejimidagi muloqot oynasining demo versiyasi"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SAQLASH"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Butun ekran rejimidagi muloqot oynasi"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google ilovalarga joylashuvni aniqlashda yordam berishi uchun ruxsat bering. Bu shuni bildiradiki, hech qanday ilova ishlamayotgan boʻlsa ham joylashuv axboroti maxfiy tarzda Googlega yuboriladi."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Googlening joylashuvni aniqlash xizmatidan foydalanilsinmi?"),
        "dialogSelectedOption": m7,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Hisobni tanlash"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MULOQOT OYNASINI CHIQARISH"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("USLUBLAR VA MEDIA NAMUNALAR"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Turkumlar"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Gallereya"),
        "rallyAccountAmount": m8,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Avtomobil olish uchun"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Hisobraqam"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Uy olish uchun"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Taʼtil"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Hisob egasi"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Yillik foiz daromadi"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Oʻtgan yili toʻlangan foiz"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Foiz stavkasi"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Yil boshidan beri foizlar"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Keyingi hisob qaydnomasi"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Jami"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Hisoblar"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "rallyAlertsMessageATMFees": m9,
        "rallyAlertsMessageCheckingAccount": m10,
        "rallyAlertsMessageHeadsUpShopping": m11,
        "rallyAlertsMessageSpentOnRestaurants": m12,
        "rallyAlertsMessageUnassignedTransactions": m13,
        "rallyBillAmount": m14,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Hisob-kitob"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Muddati"),
        "rallyBudgetAmount": m15,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Kiyim-kechak"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Qahvaxonalar"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Baqqollik mollari"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoranlar"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Qoldiq"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budjetlar"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Budjetni rejalashtirish uchun ilova"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("QOLDI"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("KIRISH"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Kirish"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally hisobiga kirish"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Hisobingiz yoʻqmi?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Parol"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Eslab qolinsin"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ROʻYXATDAN OʻTISH"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Foydalanuvchi nomi"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("HAMMASI"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Barcha hisoblar"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Hisob-varaqlari"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Barcha budjetlar"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Bankomatlarni topish"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Yordam"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Hisoblarni boshqarish"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Elektron hujjatlar sozlamalari"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Kirish kodi va Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Shaxsiy axborot"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Chiqish"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Soliq hujjatlari"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("HISOBLAR"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("HISOB-KITOB"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDJETLAR"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("UMUMIY"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("SOZLAMALAR"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery haqida"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Dizayn: TOASTER, London"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tungi"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Fikr-mulohaza yuborish"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Kunduzgi"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Hududiy sozlamalar"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Sekinlashuv"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Tizim"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Matn yoʻnalishi"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Chapdan oʻngga"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Mamlakat soliqlari asosida"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Oʻngdan chapga"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Matn oʻlchami"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Juda katta"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Yirik"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kichik"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Mavzu"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Sozlamalar"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("SAVATCHANI TOZALASH"),
        "shrineCartItemCount": m16,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("SAVATCHA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Yetkazib berish:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Oraliq summa:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Soliq:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("JAMI"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESSUARLAR"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("HAMMASI"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("KIYIMLAR"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("UY"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Zamonaviy buyumlarni sotib olish uchun ilova"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parol"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Foydalanuvchi nomi"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("CHIQISH"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENYU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("KEYINGISI"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Koʻk finjon"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Shaftolirang futbolka"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Paxtali sochiqlar"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Paxtali koʻylak"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassik oq bluzka"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Och jigarrang sviter"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Mis simli savat"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Chiziqli kofta"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Gulchambar"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Getsbi shlyapa"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jentri kurtka"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Stol jamlanmasi"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Sariq sharf"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Kulrang mayka"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Choy ichish uchun jamlanma"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Oshxona jamlanmasi"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Kalta klesh shimlari"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster tunika"),
        "shrineProductPrice": m17,
        "shrineProductQuantity": m18,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Aylana stol"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Yomgʻir suvi tarnovi"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ayollar bluzkasi"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Yengil sviter"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Yalpizli sviter"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Qoʻllar erkin harakatlanadigan futbolka"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Hobo sumka"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Sopol idishlar jamlanmasi"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella quyosh koʻzoynaklari"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Halqali zirak"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukkulent oʻsimliklari"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Yozgi koʻylak"),
        "shrineProductSurfAndPerfShirt": MessageLookupByLibrary.simpleMessage(
            "Dengiz toʻlqinlari rangidagi futbolka"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond sumkasi"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Sport paypoqlari"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Oq yengil kofta"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Toʻqilgan jevak"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Oq chiziqli koʻylak"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Charm kamar"),
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Savatchani yopish"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menyuni yopish"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menyuni ochish"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Elementni olib tashlash"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Qidiruv"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Sozlamalar"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Moslashuvchan maket"),
        "starterAppDrawerItem": m19,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Asosiy qism"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("TUGMA"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Sarlavha"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Taglavha"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Nomi"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Starter ilovasi"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Kiritish"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Sevimli"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Qidiruv"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Ulashish")
      };
}
