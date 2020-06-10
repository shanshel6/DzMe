import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:prokit_flutter/Learner/Screens/LearnerDashboard.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizAllList.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizCard.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizChangePassword.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizContactUs.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizCreatePassword.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizDashboard.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizDetails.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizEditProfile.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizHelpCenter.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizHome.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizMobileVerify.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizNewList.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizNotification.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizResult.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizSearch.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizSettings.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizSignIn.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizSignUp.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizUpdateEmail.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizVerifcation.dart';
import 'package:prokit_flutter/Quiz/Screens/quizEmailRequest.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard1.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard8.dart';
import 'package:prokit_flutter/grocery/screen/GroceryDashboard.dart';
import 'package:prokit_flutter/main/screens/ProkitLauncher.dart';
import 'package:prokit_flutter/main/utils/AppColors.dart';
import 'package:prokit_flutter/qibus/screen/QIBusAddCard.dart';
import 'package:prokit_flutter/qibus/screen/QIBusAddPassenger.dart';
import 'package:prokit_flutter/qibus/screen/QIBusCards.dart';
import 'package:prokit_flutter/qibus/screen/QIBusDashboard.dart';
import 'package:prokit_flutter/qibus/screen/QIBusEditProfile.dart';
import 'package:prokit_flutter/qibus/screen/QIBusHelp.dart';
import 'package:prokit_flutter/qibus/screen/QIBusNotification.dart';
import 'package:prokit_flutter/qibus/screen/QIBusPayment.dart';
import 'package:prokit_flutter/qibus/screen/QIBusPickDrop.dart';
import 'package:prokit_flutter/qibus/screen/QIBusReferEarn.dart';
import 'package:prokit_flutter/qibus/screen/QIBusSearhList.dart';
import 'package:prokit_flutter/qibus/screen/QIBusSelectSeat.dart';
import 'package:prokit_flutter/qibus/screen/QIBusSetting.dart';
import 'package:prokit_flutter/qibus/screen/QIBusSignIn.dart';
import 'package:prokit_flutter/qibus/screen/QIBusSplash.dart';
import 'package:prokit_flutter/qibus/screen/QIBusVerification.dart';
import 'package:prokit_flutter/qibus/screen/QIBusViewOffer.dart';
import 'package:prokit_flutter/qibus/screen/QIBusViewPackage.dart';
import 'package:prokit_flutter/qibus/screen/QIBusWallet.dart';
import 'package:prokit_flutter/shophop/screens/ShAccountScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShAccountScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShAddCardScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShAddNewAddress.dart';
import 'package:prokit_flutter/shophop/screens/ShAdressManagerScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShCartScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShContactUsScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShEmailScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShFAQScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShHomeScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShOffersScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShOrderDetailScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShOrderListScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShOrderSummaryScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShPaymentsScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShProductDetail.dart';
import 'package:prokit_flutter/shophop/screens/ShQuickPayCardsScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShSearchScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShSettingsScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShSignIn.dart';
import 'package:prokit_flutter/shophop/screens/ShSignUp.dart';
import 'package:prokit_flutter/shophop/screens/ShSplashScreen.dart';
import 'package:prokit_flutter/shophop/screens/ShSubCategory.dart';
import 'package:prokit_flutter/shophop/screens/ShViewAllProducts.dart';
import 'package:prokit_flutter/shophop/screens/ShWalkThroughScreen.dart';
import 'package:prokit_flutter/social/screen/SocialAccount.dart';
import 'package:prokit_flutter/social/screen/SocialCall.dart';
import 'package:prokit_flutter/social/screen/SocialChangeNumber.dart';
import 'package:prokit_flutter/social/screen/SocialChatting.dart';
import 'package:prokit_flutter/social/screen/SocialDashboard.dart';
import 'package:prokit_flutter/social/screen/SocialDeleteAccount.dart';
import 'package:prokit_flutter/social/screen/SocialGallery.dart';
import 'package:prokit_flutter/social/screen/SocialNotifications.dart';
import 'package:prokit_flutter/social/screen/SocialProfile.dart';
import 'package:prokit_flutter/social/screen/SocialSettings.dart';
import 'package:prokit_flutter/social/screen/SocialSignIn.dart';
import 'package:prokit_flutter/social/screen/SocialVerify.dart';
import 'package:prokit_flutter/social/screen/SocialViewCalls.dart';
import 'package:prokit_flutter/social/screen/SocialViewChats.dart';
import 'package:prokit_flutter/social/screen/SocialWalkThrough.dart';
import 'package:prokit_flutter/theme1/screen/T1ImageSlider.dart';
import 'package:prokit_flutter/theme1/screen/T1Search.dart';
import 'package:prokit_flutter/main/screens/ProkitScreenListing.dart';
import 'package:prokit_flutter/theme1/screen/T1Card.dart';
import 'package:prokit_flutter/theme1/screen/T1Dashboard.dart';
import 'package:prokit_flutter/theme1/screen/T1Dialog.dart';
import 'package:prokit_flutter/theme1/screen/T1Listing.dart';
import 'package:prokit_flutter/theme1/screen/T1Login.dart';
import 'package:prokit_flutter/theme1/screen/T1Profile.dart';
import 'package:prokit_flutter/theme1/screen/T1Signup.dart';
import 'package:prokit_flutter/theme1/screen/T1WalkThrough.dart';
import 'package:prokit_flutter/theme1/screen/T1BottomNavigation.dart';
import 'package:prokit_flutter/theme1/screen/T1BottomSheet.dart';
import 'package:prokit_flutter/theme1/screen/T1Sidemenu.dart';
import 'package:prokit_flutter/theme10/screens/T10Cards.dart';
import 'package:prokit_flutter/theme10/screens/T10Dashboard.dart';
import 'package:prokit_flutter/theme10/screens/T10Description.dart';
import 'package:prokit_flutter/theme10/screens/T10Dialog.dart';
import 'package:prokit_flutter/theme10/screens/T10Listing.dart';
import 'package:prokit_flutter/theme10/screens/T10Profile.dart';
import 'package:prokit_flutter/theme10/screens/T10SideMenu.dart';
import 'package:prokit_flutter/theme10/screens/T10SignIn.dart';
import 'package:prokit_flutter/theme10/screens/T10SignUp.dart';
import 'package:prokit_flutter/theme11/screens/T11BottomSheet.dart';
import 'package:prokit_flutter/theme11/screens/T11Description.dart';
import 'package:prokit_flutter/theme11/screens/T11Listing.dart';
import 'package:prokit_flutter/theme11/screens/T11Search.dart';
import 'package:prokit_flutter/theme11/screens/T11Setting.dart';
import 'package:prokit_flutter/theme11/screens/T11SignIn.dart';
import 'package:prokit_flutter/theme11/screens/T11SignUp.dart';

import 'package:prokit_flutter/theme2/screens/T2BottomNavigation.dart';
import 'package:prokit_flutter/theme2/screens/T2BottomSheet.dart';
import 'package:prokit_flutter/theme2/screens/T2Cards.dart';
import 'package:prokit_flutter/theme2/screens/T2Dashboard.dart';
import 'package:prokit_flutter/theme2/screens/T2Dialog.dart';
import 'package:prokit_flutter/theme2/screens/T2ImageSlider.dart';
import 'package:prokit_flutter/theme2/screens/T2Listing.dart';
import 'package:prokit_flutter/theme2/screens/T2Profile.dart';
import 'package:prokit_flutter/theme2/screens/T2Search.dart';
import 'package:prokit_flutter/theme2/screens/T2SideMenu.dart';
import 'package:prokit_flutter/theme2/screens/T2SignIn.dart';
import 'package:prokit_flutter/theme2/screens/T2SignUp.dart';
import 'package:prokit_flutter/theme2/screens/T2Walkthrough.dart';
import 'package:prokit_flutter/theme2/utils/T2Colors.dart';
import 'package:prokit_flutter/theme4/screens/T4BottomNavigation.dart';
import 'package:prokit_flutter/theme4/screens/T4Cards.dart';
import 'package:prokit_flutter/theme4/screens/T4Dashboard.dart';
import 'package:prokit_flutter/theme4/screens/T4Detail.dart';
import 'package:prokit_flutter/theme4/screens/T4Dialog.dart';
import 'package:prokit_flutter/theme4/screens/T4ImageSlider.dart';
import 'package:prokit_flutter/theme4/screens/T4Listing.dart';
import 'package:prokit_flutter/theme4/screens/T4Profile.dart';
import 'package:prokit_flutter/theme4/screens/T4SignIn.dart';
import 'package:prokit_flutter/theme4/screens/T4SignUp.dart';
import 'package:prokit_flutter/theme4/screens/T4Walkthrough.dart';
import 'package:prokit_flutter/theme5/screens/T5BottomNavigation.dart';
import 'package:prokit_flutter/theme5/screens/T5BottomSheet.dart';
import 'package:prokit_flutter/theme5/screens/T5Cards.dart';
import 'package:prokit_flutter/theme5/screens/T5Dashboard.dart';
import 'package:prokit_flutter/theme5/screens/T5Dialog.dart';
import 'package:prokit_flutter/theme5/screens/T5ImageSlider.dart';
import 'package:prokit_flutter/theme5/screens/T5Listing.dart';
import 'package:prokit_flutter/theme5/screens/T5Profile.dart';
import 'package:prokit_flutter/theme5/screens/T5Search.dart';
import 'package:prokit_flutter/theme5/screens/T5SetFingerPrint.dart';
import 'package:prokit_flutter/theme5/screens/T5SetPassword.dart';
import 'package:prokit_flutter/theme5/screens/T5Settings.dart';
import 'package:prokit_flutter/theme5/screens/T5SignIn.dart';
import 'package:prokit_flutter/theme5/screens/T5SignUp.dart';
import 'package:prokit_flutter/theme5/screens/T5Verification.dart';
import 'package:prokit_flutter/theme5/screens/T5Walkthrough.dart';
import 'package:prokit_flutter/theme3/screen/T3Profile.dart';
import 'package:prokit_flutter/theme3/screen/T3BottomNavigation.dart';
import 'package:prokit_flutter/theme3/screen/T3BottomSheet.dart';
import 'package:prokit_flutter/theme3/screen/T3Cards.dart';
import 'package:prokit_flutter/theme3/screen/T3Dashboard.dart';
import 'package:prokit_flutter/theme3/screen/T3Description.dart';
import 'package:prokit_flutter/theme3/screen/T3Dialog.dart';
import 'package:prokit_flutter/theme3/screen/T3ImageSlider.dart';
import 'package:prokit_flutter/theme3/screen/T3Listing.dart';
import 'package:prokit_flutter/theme3/screen/T3Search.dart';
import 'package:prokit_flutter/theme3/screen/T3Setting.dart';
import 'package:prokit_flutter/theme3/screen/T3SideMenu.dart';
import 'package:prokit_flutter/theme3/screen/T3SignUp.dart';
import 'package:prokit_flutter/theme3/screen/T3Tab.dart';
import 'package:prokit_flutter/theme3/screen/T3Walkthrough.dart';
import 'package:prokit_flutter/theme6/screens/T6BottomNavigation.dart';
import 'package:prokit_flutter/theme6/screens/T6Cards.dart';
import 'package:prokit_flutter/theme6/screens/T6Dashboard.dart';
import 'package:prokit_flutter/theme6/screens/T6Dialog.dart';
import 'package:prokit_flutter/theme6/screens/T6ImageSlider.dart';
import 'package:prokit_flutter/theme6/screens/T6List.dart';
import 'package:prokit_flutter/theme6/screens/T6Setting.dart';
import 'package:prokit_flutter/theme6/screens/T6SignIn.dart';
import 'package:prokit_flutter/theme6/screens/T6SignUp.dart';
import 'package:prokit_flutter/theme6/screens/T6WalkThrough.dart';
import 'package:prokit_flutter/theme8/screen/T8BottomNavigation.dart';
import 'package:prokit_flutter/theme8/screen/T8Cards.dart';
import 'package:prokit_flutter/theme8/screen/T8Dashboard.dart';
import 'package:prokit_flutter/theme8/screen/T8Listing.dart';
import 'package:prokit_flutter/theme8/screen/T8Result.dart';
import 'package:prokit_flutter/theme8/screen/T8Search.dart';
import 'package:prokit_flutter/theme8/screen/T8Settings.dart';
import 'package:prokit_flutter/theme8/screen/T8SignIn.dart';
import 'package:prokit_flutter/theme8/screen/T8SignUp.dart';
import 'package:prokit_flutter/theme9/screens/T9BottomNavigation.dart';
import 'package:prokit_flutter/theme9/screens/T9Cards.dart';
import 'package:prokit_flutter/theme9/screens/T9Dashboard.dart';
import 'package:prokit_flutter/theme9/screens/T9Description.dart';
import 'package:prokit_flutter/theme9/screens/T9List.dart';
import 'package:prokit_flutter/theme9/screens/T9Profile.dart';
import 'package:prokit_flutter/theme9/screens/T9Search.dart';
import 'package:prokit_flutter/theme9/screens/T9SignIn.dart';
import 'package:prokit_flutter/theme9/screens/T9SingUp.dart';
import 'package:prokit_flutter/theme9/screens/T9WalkThrough.dart';
import 'package:prokit_flutter/theme11/screens/T11Profile.dart';
import 'package:prokit_flutter/theme11/screens/T11Dashboard.dart';
import 'package:provider/provider.dart';
import 'Learner/Screens/LearnerDescription.dart';
import 'Learner/Screens/LearnerModrenMedicine.dart';
import 'Learner/Screens/LearnerWalkThrough.dart';
import 'dashboard/screen/Dashboard2.dart';
import 'dashboard/screen/Dashboard3.dart';
import 'dashboard/screen/Dashboard4.dart';
import 'dashboard/screen/Dashboard5.dart';
import 'dashboard/screen/Dashboard6.dart';
import 'dashboard/screen/Dashboard7.dart';
import 'food/screen/FoodAddAddress.dart';
import 'food/screen/FoodAddressConfirmation.dart';
import 'food/screen/FoodBookCart.dart';
import 'food/screen/FoodBookDetail.dart';
import 'food/screen/FoodCoupon.dart';
import 'food/screen/FoodCreateAccount.dart';
import 'food/screen/FoodDashboard.dart';
import 'food/screen/FoodDeliveryInfo.dart';
import 'food/screen/FoodDescription.dart';
import 'food/screen/FoodFavourite.dart';
import 'food/screen/FoodGallery.dart';
import 'food/screen/FoodOrder.dart';
import 'food/screen/FoodPayment.dart';
import 'food/screen/FoodProfile.dart';
import 'food/screen/FoodRestaurantsDescription.dart';
import 'food/screen/FoodReview.dart';
import 'food/screen/FoodSignIn.dart';
import 'food/screen/FoodViewRestaurants.dart';
import 'food/screen/FoodWalkThrough.dart';
import 'grocery/screen/GroceryProductDescription.dart';
import 'grocery/screen/GrocerySplash.dart';
import 'integrations/app_localizations.dart';
import 'integrations/app_state.dart';
import 'integrations/screens/home_page.dart';
import 'social/screen/SocialChats.dart';
import 'social/screen/SocialProfileInfo.dart';
import 'theme3/screen/T3SignIn.dart';
import 'theme7/screens/T7BottomSheet.dart';
import 'theme7/screens/T7Dashboard.dart';
import 'theme7/screens/T7HotelBooking.dart';
import 'theme7/screens/T7HotelDetail.dart';
import 'theme7/screens/T7HotelList.dart';
import 'theme7/screens/T7PlaceDetail.dart';
import 'theme7/screens/T7Search.dart';
import 'theme7/screens/T7SignIn.dart';
import 'theme7/screens/T7SocialLogin.dart';
import 'theme7/screens/T7WalkThrough.dart';


void main() {
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_) => AppState('en', colorCustom),
      child: Consumer<AppState>(builder: (context, provider, builder) {
        return  MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: [Locale('en'), Locale('hi')],
            localizationsDelegates: [AppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
            localeResolutionCallback: (locale, supportedLocales) {
              return Locale(Provider.of<AppState>(context).selectedLanguageCode);
            },
            locale: Provider.of<AppState>(context).locale,
            routes: <String, WidgetBuilder>{
              /**launcher screen routes*/
              ProkitScreenListing.tag: (context) => ProkitScreenListing(),

              /**Dashboard screens routes*/
              Dashboard1.tag: (context) => Dashboard1(),
              Dashboard2.tag: (context) => Dashboard2(),
              Dashboard3.tag: (context) => Dashboard3(),
              Dashboard4.tag: (context) => Dashboard4(),
              Dashboard5.tag: (context) => Dashboard5(),
              Dashboard6.tag: (context) => Dashboard6(),
              Dashboard7.tag: (context) => Dashboard7(),
              Dashboard8.tag: (context) => Dashboard8(),

              /**Theme 1 screens routes*/
              T1Login.tag: (context) => T1Login(),
              T1Signup.tag: (context) => T1Signup(),
              T1Profile.tag: (context) => T1Profile(),
              T1Dashboard.tag: (context) => T1Dashboard(),
              T1Listing.tag: (context) => T1Listing(),
              T1Dialog.tag: (context) => T1Dialog(),
              T1Card.tag: (context) => T1Card(),
              T1WalkThrough.tag: (context) => T1WalkThrough(),
              T1SideMenu.tag: (BuildContext context) => T1SideMenu(),
              T1BottomNavigation.tag: (BuildContext context) => T1BottomNavigation(),
              T1BottomSheet.tag: (BuildContext context) => T1BottomSheet(),
              T1Search.tag: (BuildContext context) => T1Search(),
              T1ImageSlider.tag: (BuildContext context) => T1ImageSlider(),

              /**Theme 2 screens routes*/
              T2SignIn.tag: (BuildContext context) => T2SignIn(),
              T2SignUp.tag: (BuildContext context) => T2SignUp(),
              T2Dashboard.tag: (BuildContext context) => T2Dashboard(),
              T2WalkThrough.tag: (BuildContext context) => T2WalkThrough(),
              T2Search.tag: (BuildContext context) => T2Search(),
              T2BottomSheet.tag: (BuildContext context) => T2BottomSheet(),
              T2Dialog.tag: (BuildContext context) => T2Dialog(),
              T2Listing.tag: (BuildContext context) => T2Listing(),
              T2Cards.tag: (BuildContext context) => T2Cards(),
              T2BottomNavigation.tag: (BuildContext context) => T2BottomNavigation(),
              T2ImageSlider.tag: (BuildContext context) => T2ImageSlider(),
              T2Profile.tag: (BuildContext context) => T2Profile(),
              T2SideMenu.tag: (BuildContext context) => T2SideMenu(),

              /**Theme 3 screens routes*/
              T3SignIn.tag: (BuildContext context) => T3SignIn(),
              T3SignUp.tag: (BuildContext context) => T3SignUp(),
              T3Dashboard.tag: (BuildContext context) => T3Dashboard(),
              T3WalkThrough.tag: (BuildContext context) => T3WalkThrough(),
              T3Search.tag: (BuildContext context) => T3Search(),
              T3BottomSheet.tag: (BuildContext context) => T3BottomSheet(),
              T3Dialog.tag: (BuildContext context) => T3Dialog(),
              T3Listing.tag: (BuildContext context) => T3Listing(),
              T3Cards.tag: (BuildContext context) => T3Cards(),
              T3BottomNavigation.tag: (BuildContext context) => T3BottomNavigation(),
              T3ImageSlider.tag: (BuildContext context) => T3ImageSlider(),
              T3SideMenu.tag: (BuildContext context) => T3SideMenu(),
              T3Setting.tag: (BuildContext context) => T3Setting(),
              T3Tab.tag: (BuildContext context) => T3Tab(),
              T3Profile.tag: (BuildContext context) => T3Profile(),
              T3Description.tag: (BuildContext context) => T3Description(),

              /**Theme 4 screens routes*/
              T4WalkThrough.tag:(BuildContext context)=> T4WalkThrough(),
              T4SignIn.tag:(BuildContext context)=> T4SignIn(),
              T4SignUp.tag:(BuildContext context)=> T4SignUp(),
              T4Dialog.tag:(BuildContext context)=> T4Dialog(),
              T4Listing.tag:(BuildContext context)=> T4Listing(),
              T4Profile.tag:(BuildContext context)=> T4Profile(),
              T4Dashboard.tag:(BuildContext context)=> T4Dashboard(),
              T4BottomNavigation.tag:(BuildContext context)=> T4BottomNavigation(),
              T4Cards.tag:(BuildContext context)=> T4Cards(),
              T4Detail.tag:(BuildContext context)=> T4Detail(),
              T4ImageSlider.tag:(BuildContext context)=> T4ImageSlider(),

              /**Theme 5 screens routes*/
              T5SignIn.tag:(BuildContext context) =>T5SignIn(),
              T5SignUp.tag:(BuildContext context) =>T5SignUp(),
              T5Verification.tag:(BuildContext context) =>T5Verification(),
              T5SetFingerPrint.tag:(BuildContext context) =>T5SetFingerPrint(),
              T5SetPassword.tag:(BuildContext context) =>T5SetPassword(),
              T5Dashboard.tag:(BuildContext context) =>T5Dashboard(),
              T5BottomNavigation.tag:(BuildContext context) =>T5BottomNavigation(),
              T5BottomSheet.tag:(BuildContext context) =>T5BottomSheet(),
              T5Listing.tag:(BuildContext context) =>T5Listing(),
              T5Cards.tag:(BuildContext context) =>T5Cards(),
              T5Search.tag:(BuildContext context) =>T5Search(),
              T5Settings.tag:(BuildContext context) =>T5Settings(),
              T5Profile.tag:(BuildContext context) =>T5Profile(),
              T5WalkThrough.tag:(BuildContext context) =>T5WalkThrough(),
              T5ImageSlider.tag:(BuildContext context) =>T5ImageSlider(),
              T5Dialog.tag:(BuildContext context) =>T5Dialog(),

              /**Theme 6 screens routes*/
              T6WalkThrough.tag:(BuildContext context) =>T6WalkThrough(),
              T6SignIn.tag:(BuildContext context) =>T6SignIn(),
              T6SignUp.tag:(BuildContext context) =>T6SignUp(),
              T6List.tag:(BuildContext context) =>T6List(),
              T6Dashboard.tag:(BuildContext context) =>T6Dashboard(),
              T6Dialog.tag:(BuildContext context) =>T6Dialog(),
              T6Cards.tag:(BuildContext context) =>T6Cards(),
              T6BottomNavigation.tag:(BuildContext context) =>T6BottomNavigation(),
              T6ImageSlider.tag:(BuildContext context) =>T6ImageSlider(),
              T6Setting.tag:(BuildContext context) =>T6Setting(),

              /**Theme 7 screens routes*/
              T7BottomSheet.tag:(BuildContext context) =>T7BottomSheet(),
              T7Dashboard.tag:(BuildContext context) =>T7Dashboard(),
              T7HotelBooking.tag:(BuildContext context) =>T7HotelBooking(),
              T7HotelDetail.tag:(BuildContext context) =>T7HotelDetail(),
              T7HotelList.tag:(BuildContext context) =>T7HotelList(),
              T7PlaceDetail.tag:(BuildContext context) =>T7PlaceDetail(),
              T7Search.tag:(BuildContext context) =>T7Search(),
              T7SignIn.tag:(BuildContext context) =>T7SignIn(),
              T7SocialLogin.tag:(BuildContext context) =>T7SocialLogin(),
              T7WalkThrough.tag:(BuildContext context) =>T7WalkThrough(),

              /**Theme 8 screens routes*/
              T8Dashboard.tag:(BuildContext context) =>T8Dashboard(),
              T8Search.tag:(BuildContext context) =>T8Search(),
              T8SignIn.tag:(BuildContext context) =>T8SignIn(),
              T8SignUp.tag:(BuildContext context) =>T8SignUp(),
              T8BottomNavigation.tag:(BuildContext context) =>T8BottomNavigation(),
              T8Cards.tag:(BuildContext context) =>T8Cards(),
              T8Listing.tag:(BuildContext context) =>T8Listing(),
              T8Result.tag:(BuildContext context) =>T8Result(),
              T8Setting.tag:(BuildContext context) =>T8Setting(),

              /**Theme 9 screens routes*/
              T9BottomNavigation.tag:(BuildContext context) =>T9BottomNavigation(),
              T9Cards.tag:(BuildContext context) =>T9Cards(),
              T9Dashboard.tag:(BuildContext context) =>T9Dashboard(),
              T9Description.tag:(BuildContext context) =>T9Description(),
              T9List.tag:(BuildContext context) =>T9List(),
              T9Profile.tag:(BuildContext context) =>T9Profile(),
              T9Search.tag:(BuildContext context) =>T9Search(),
              T9SignIn.tag:(BuildContext context) =>T9SignIn(),
              T9SignUp.tag:(BuildContext context) =>T9SignUp(),
              T9WalkThrough.tag:(BuildContext context) =>T9WalkThrough(),

              /**Theme 10 screens routes*/
              T10Cards.tag:(BuildContext context) =>T10Cards(),
              T10Dashboard.tag:(BuildContext context) =>T10Dashboard(),
              T10Description.tag:(BuildContext context) =>T10Description(),
              T10Dialog.tag:(BuildContext context) =>T10Dialog(),
              T10Listing.tag:(BuildContext context) =>T10Listing(),
              T10Profile.tag:(BuildContext context) =>T10Profile(),
              T10SideMenu.tag:(BuildContext context) =>T10SideMenu(),
              T10SignIn.tag:(BuildContext context) =>T10SignIn(),
              T10SignUp.tag:(BuildContext context) =>T10SignUp(),


              /**Theme 11 screens routes*/
              T11SignIn.tag:(BuildContext context) => T11SignIn(),
              T11SignUp.tag:(BuildContext context) => T11SignUp(),
              T11Profile.tag:(BuildContext context) => T11Profile(),
              T11Dashboard.tag:(BuildContext context) => T11Dashboard(),
              T11Search.tag:(BuildContext context) => T11Search(),
              T11Description.tag:(BuildContext context) => T11Description(),
              T11List.tag:(BuildContext context) => T11List(),
              T11Setting.tag:(BuildContext context) => T11Setting(),
              T11BottomSheet.tag:(BuildContext context) => T11BottomSheet(),

              /**QIBus screens routes*/
              QIBusCards.tag:(BuildContext context) => QIBusCards(),
              QIBusDashboard.tag:(BuildContext context) =>QIBusDashboard(),
              QIBusEditProfile.tag:(BuildContext context) =>QIBusEditProfile(),
              QIBusHelp.tag:(BuildContext context) =>QIBusHelp(),
              QIBusNotification.tag:(BuildContext context) =>QIBusNotification(),
              QIBusReferEarn.tag:(BuildContext context) =>QIBusReferEarn(),
              QIBusSearchList.tag:(BuildContext context) =>QIBusSearchList(),
              QIBusSetting.tag:(BuildContext context) =>QIBusSetting(),
              QIBusSignIn.tag:(BuildContext context) =>QIBusSignIn(),
              QIBusVerification.tag:(BuildContext context) =>QIBusVerification(),
              QIBusViewOffer.tag:(BuildContext context) =>QIBusViewOffer(),
              QIBusViewPackage.tag:(BuildContext context) =>QIBusViewPackage(),
              QIBusWallet.tag:(BuildContext context) =>QIBusWallet(),
              QIBusSplash.tag:(BuildContext context) =>QIBusSplash(),
              QIBusSelectSeat.tag:(BuildContext context) =>QIBusSelectSeat(),
              QIBusPickDrop.tag:(BuildContext context) =>QIBusPickDrop(),
              QIBusAddPassenger.tag:(BuildContext context) =>QIBusAddPassenger(),
              QIBusPayment.tag:(BuildContext context) =>QIBusPayment(),
              QIBusAddCard.tag:(BuildContext context) =>QIBusAddCard(),

              /**Learner screens routes*/
              LearnerWalkThrough.tag:(BuildContext context) => LearnerWalkThrough(),
              LearnerDashboard.tag:(BuildContext context) => LearnerDashboard(),
              LearnerModrenMedicine.tag:(BuildContext context) => LearnerModrenMedicine(),
              LearnerDescription.tag:(BuildContext context) => LearnerDescription(),

              /**Social screens routes*/
              SocialAccount.tag:(BuildContext context) => SocialAccount(),
              SocialCall.tag:(BuildContext context) => SocialCall(),
              SocialChangeNumber.tag:(BuildContext context) => SocialChangeNumber(),
              SocialChats.tag:(BuildContext context) => SocialChats(),
              SocialChatting.tag:(BuildContext context) => SocialChatting(),
              SocialDashboard.tag:(BuildContext context) => SocialDashboard(),
              SocialDeleteAccount.tag:(BuildContext context) => SocialDeleteAccount(),
              SocialNotification.tag:(BuildContext context) => SocialNotification(),
              SocialProfile.tag:(BuildContext context) => SocialProfile(),
              SocialProfileInfo.tag:(BuildContext context) => SocialProfileInfo(),
              SocialSetting.tag:(BuildContext context) => SocialSetting(),
              SocialSignIn.tag:(BuildContext context) => SocialSignIn(),
              SocialVerify.tag:(BuildContext context) => SocialVerify(),
              SocialViewCall.tag:(BuildContext context) => SocialViewCall(),
              SocialViewChat.tag:(BuildContext context) => SocialViewChat(),
              SocialWalkThrough.tag:(BuildContext context) => SocialWalkThrough(),
              SocialGallery.tag:(BuildContext context) => SocialGallery(),

              /**Online Quiz screens routes*/
              QuizSignIn.tag:(BuildContext context) => QuizSignIn(),
              QuizSignUp.tag:(BuildContext context) => QuizSignUp(),
              QuizCreatePassword.tag:(BuildContext context) => QuizCreatePassword(),
              QuizMobileVerify.tag:(BuildContext context) => QuizMobileVerify(),
              QuizVerification.tag:(BuildContext context) => QuizVerification(),
              QuizNotification.tag:(BuildContext context) => QuizNotification(),
              QuizDashboard.tag:(BuildContext context) => QuizDashboard(),
              QuizHome.tag:(BuildContext context) => QuizHome(),
              QuizSearch.tag:(BuildContext context) => QuizSearch(),
              QuizListing.tag:(BuildContext context) => QuizListing(),
              QuizSettings.tag:(BuildContext context) => QuizSettings(),
              QuizEditProfile.tag:(BuildContext context) => QuizEditProfile(),
              QuizUpdateEmail.tag:(BuildContext context) => QuizUpdateEmail(),
              QuizChangePassword.tag:(BuildContext context) => QuizChangePassword(),
              QuizHelpCenter.tag:(BuildContext context) => QuizHelpCenter(),
              QuizContactUs.tag:(BuildContext context) => QuizContactUs(),
              QuizAllList.tag:(BuildContext context) => QuizAllList(),
              QuizDetails.tag:(BuildContext context) => QuizDetails(),
              QuizEmailRequest.tag:(BuildContext context) => QuizEmailRequest(),
              QuizCards.tag:(BuildContext context) => QuizCards(),
              QuizResult.tag:(BuildContext context) => QuizResult(),

              /**
               *Integration screens
               */
              IntegrationHomePage.tag:(BuildContext context) => IntegrationHomePage(),

              /**Shophop screens routes*/
              ShSplashScreen.tag:(BuildContext context) => ShSplashScreen(),
              ShWalkThroughScreen.tag:(BuildContext context) => ShWalkThroughScreen(),
              ShHomeScreen.tag:(BuildContext context) => ShHomeScreen(),
              ShSignIn.tag:(BuildContext context) => ShSignIn(),
              ShSignUp.tag:(BuildContext context) => ShSignUp(),
              ShProductDetail.tag:(BuildContext context) => ShProductDetail(),
              ShSubCategory.tag:(BuildContext context) => ShSubCategory(),
              ShViewAllProductScreen.tag:(BuildContext context) => ShViewAllProductScreen(),
              ShSearchScreen.tag:(BuildContext context) => ShSearchScreen(),
              ShCartScreen.tag:(BuildContext context) => ShCartScreen(),
              ShSettingsScreen.tag:(BuildContext context) => ShSettingsScreen(),
              ShAddNewAddress.tag:(BuildContext context) => ShAddNewAddress(),
              ShOrderSummaryScreen.tag:(BuildContext context) => ShOrderSummaryScreen(),
              ShAddressManagerScreen.tag:(BuildContext context) => ShAddressManagerScreen(),
              ShPaymentsScreen.tag:(BuildContext context) => ShPaymentsScreen(),
              ShAddCardScreen.tag:(BuildContext context) => ShAddCardScreen(),
              ShOrderListScreen.tag:(BuildContext context) => ShOrderListScreen(),
              ShOrderDetailScreen.tag:(BuildContext context) => ShOrderDetailScreen(),
              ShOffersScreen.tag:(BuildContext context) => ShOffersScreen(),
              ShFAQScreen.tag:(BuildContext context) => ShFAQScreen(),
              ShContactUsScreen.tag:(BuildContext context) => ShContactUsScreen(),
              ShEmailScreen.tag:(BuildContext context) => ShEmailScreen(),
              ShQuickPayCardsScreen.tag:(BuildContext context) => ShQuickPayCardsScreen(),
              ShAccountScreen.tag:(BuildContext context) => ShAccountScreen(),

              /**Food App screens routes*/
              FoodAddAddress.tag:(BuildContext context) => FoodAddAddress(),
              FoodAddressConfirmation.tag:(BuildContext context) => FoodAddressConfirmation(),
              FoodBookCart.tag:(BuildContext context) => FoodBookCart(),
              FoodBookDetail.tag:(BuildContext context) => FoodBookDetail(),
              FoodCoupon.tag:(BuildContext context) => FoodCoupon(),
              FoodCreateAccount.tag:(BuildContext context) => FoodCreateAccount(),
              FoodDashboard.tag:(BuildContext context) => FoodDashboard(),
              FoodDeliveryInfo.tag:(BuildContext context) => FoodDeliveryInfo(),
              FoodDescription.tag:(BuildContext context) => FoodDescription(),
              FoodFavourite.tag:(BuildContext context) => FoodFavourite(),
              FoodGallery.tag:(BuildContext context) => FoodGallery(),
              FoodOrder.tag:(BuildContext context) => FoodOrder(),
              FoodPayment.tag:(BuildContext context) => FoodPayment(),
              FoodProfile.tag:(BuildContext context) => FoodProfile(),
              FoodRestaurantsDescription.tag:(BuildContext context) => FoodRestaurantsDescription(),
              FoodReview.tag:(BuildContext context) => FoodReview(),
              FoodSignIn.tag:(BuildContext context) => FoodSignIn(),
              FoodViewRestaurants.tag:(BuildContext context) => FoodViewRestaurants(),
              FoodWalkThrough.tag:(BuildContext context) => FoodWalkThrough(),

              /**Grocery App screens routes*/
              GrocerySplashScreen.tag:(BuildContext context) => GrocerySplashScreen(),

            },
            title: 'Prokit',
            theme: ThemeData(
                primarySwatch: colorCustom,
                backgroundColor: appWhite,
                scaffoldBackgroundColor: appWhite
            ),
            home: ProkitLauncher(),
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: SBehavior(),
                child: child,
              );
            },
          );
      }),
    );

  }
}
class SBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
