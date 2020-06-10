import 'package:prokit_flutter/integrations/models/ContentModel.dart';
import 'package:prokit_flutter/integrations/screens/before_after_image_screen.dart';
import 'package:prokit_flutter/integrations/screens/bottom_sheet_screen.dart';
import 'package:prokit_flutter/integrations/screens/button_screen.dart';
import 'package:prokit_flutter/integrations/screens/card_screen.dart';
import 'package:prokit_flutter/integrations/screens/fluid_slider_screen.dart';
import 'package:prokit_flutter/integrations/screens/folding_cell_screen.dart';
import 'package:prokit_flutter/integrations/screens/google_map_screen.dart';
import 'package:prokit_flutter/integrations/screens/google_signin_screen.dart';
import 'package:prokit_flutter/integrations/screens/liquid_pull_to_refresh_screen.dart';
import 'package:prokit_flutter/integrations/screens/liquid_swipe_screen.dart';
import 'package:prokit_flutter/integrations/screens/picker_screen.dart';
import 'package:prokit_flutter/integrations/screens/razorpay_screen.dart';
import 'package:prokit_flutter/integrations/screens/shader_mask_screen.dart';
import 'package:prokit_flutter/integrations/screens/singature_screen.dart';
import 'package:prokit_flutter/integrations/screens/sliding_panel_screen.dart';
import 'package:prokit_flutter/integrations/screens/snackbar_screen.dart';
import 'package:prokit_flutter/integrations/screens/toast_screen.dart';
import 'package:prokit_flutter/integrations/screens/wave_screen.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';

import '../app_localizations.dart';

Future<List<ContentModel>> getContents(context) async {
  var localization = AppLocalizations.of(context);
  List<ContentModel> list = List();

  var cat1Item1 = ContentModel(title: 'Before After Image', pageName: BeforeAfterImageScreen());
  var cat1Item2 = ContentModel(title: 'Google Sign In', pageName: GoogleSignInScreen());
  var cat1Item3 = ContentModel(title: 'Wave Widget', pageName: WaveScreen());
  var cat1Item4 = ContentModel(title: 'Signature Pad', pageName: SignatureScreen());
  var cat1Item5 = ContentModel(title: 'Liquid Swipe WalkThrough', pageName: LiquidSwipeScreen());
  list.add(ContentModel(title: 'Integrations', bgColor: appCat1, items: [cat1Item1, cat1Item2, cat1Item3, cat1Item4, cat1Item5]));

  var cat2Item1 = ContentModel(title: 'Buttons', bgColor: appCat4, pageName: ButtonScreen());
  var cat2Item2 = ContentModel(title: 'Cards', bgColor: appCat5, pageName: CardScreen());
  var cat2Item3 = ContentModel(title: 'Pickers', bgColor: appCat6, pageName: PickerScreen());
  var cat2Item4 = ContentModel(title: 'Bottom Sheet', bgColor: appCat6, pageName: BottomSheetScreen());
  var cat2Item5 = ContentModel(title: 'Slider', bgColor: appCat6, pageName: FluidSliderScreen());
  var cat2Item6 = ContentModel(title: 'ShaderMask', bgColor: appCat6, pageName: ShaderMaskScreen());
  list.add(ContentModel(title: 'UI Interactions', bgColor: appCat2, items: [cat2Item1, cat2Item2, cat2Item3, cat2Item4, cat2Item5, cat2Item6]));

  var cat3Item1 = ContentModel(title: 'Liquid Pull To Refresh', pageName: LiquidPullToRefreshScreen());
  var cat3Item2 = ContentModel(title: 'Folding Cell in ListView', pageName: FoldingCellScreen());
  list.add(ContentModel(title: 'Lists', pageName: GoogleMapScreen(), bgColor: appCat3, icon: 'ic_list.png', items: [cat3Item1, cat3Item2]));

  var cat4Item1 = ContentModel(title: 'Toast', pageName: ToastScreen());
  var cat4Item2 = ContentModel(title: 'Snackbar', pageName: SnackBarScreen());
  list.add(ContentModel(title: 'Toasts and Snackbars', pageName: GoogleSignInScreen(), bgColor: appCat6, items: [cat4Item1, cat4Item2]));

  var cat5Item1 = ContentModel(title: 'Google Maps with Clusttering', pageName: GoogleMapScreen());
  var cat5Item2 = ContentModel(title: 'Google Maps Sliping Panel', pageName: SlidingPanelScreen());
  list.add(ContentModel(title: 'Maps', bgColor: appCat4, icon: 'ic_map_pin_line.png', items: [cat5Item1, cat5Item2]));

  var cat6Item1 = ContentModel(title: 'RazorPay Payment', pageName: RazorPayScreen());
  list.add(ContentModel(title: 'Payment Gateways', bgColor: appCat5, icon: 'ic_payment.png', items: [cat6Item1]));

  return list;
}

Future<List<ContentModel>> getTopContents(context) async {
  var localization = AppLocalizations.of(context);
  List<ContentModel> list = List();

  list.add(ContentModel(title: 'Dark Mode', bgColor: primaryColor, icon: 'ic_dark_mode.png'));
  list.add(ContentModel(title: localization.translate('language'), bgColor: thirdColor, icon: 'ic_multi_language.png'));
  list.add(ContentModel(title: 'Coming Soon', bgColor: secondaryColor));

  return list;
}
