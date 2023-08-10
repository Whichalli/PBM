import 'package:pbm_app/presentation/add_baby/add_baby_screen.dart';
import 'package:pbm_app/presentation/add_baby/binding/add_baby_bind.dart';
import 'package:pbm_app/presentation/already_signed_up_two_screen/already_signed_up_two_screen.dart';
import 'package:pbm_app/presentation/already_signed_up_two_screen/binding/already_signed_up_two_binding.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/nurse_dashboard_page.dart';
import 'package:pbm_app/presentation/nurse_profile/nurse_profile.dart';
import 'package:pbm_app/presentation/pumping_screen/binding/pumping_binding.dart';
import 'package:pbm_app/presentation/pumping_screen/pumping_screen.dart';
import 'package:pbm_app/presentation/select_baby/binding/select_baby_bind.dart';
import 'package:pbm_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:pbm_app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:pbm_app/presentation/pricing_screen/pricing_screen.dart';
import 'package:pbm_app/presentation/pricing_screen/binding/pricing_binding.dart';
import 'package:pbm_app/presentation/services_screen/services_screen.dart';
import 'package:pbm_app/presentation/services_screen/binding/services_binding.dart';
import 'package:pbm_app/presentation/choose_age_screen/choose_age_screen.dart';
import 'package:pbm_app/presentation/choose_age_screen/binding/choose_age_binding.dart';
import 'package:pbm_app/presentation/choose_gender_age_screen/choose_gender_age_screen.dart';
import 'package:pbm_app/presentation/choose_gender_age_screen/binding/choose_gender_age_binding.dart';
import 'package:pbm_app/presentation/home_screen/home_screen.dart';
import 'package:pbm_app/presentation/home_screen/binding/home_binding.dart';
import 'package:pbm_app/presentation/select_baby/select_baby_screen.dart';
// import 'package:pbm_app/presentation/home1_screen/binding/home1_binding.dart';
import 'package:pbm_app/presentation/home_onboarding_container_screen/home_onboarding_container_screen.dart';
import 'package:pbm_app/presentation/home_onboarding_container_screen/binding/home_onboarding_container_binding.dart';
import 'package:pbm_app/presentation/home_empty_screen/home_empty_screen.dart';
import 'package:pbm_app/presentation/home_empty_screen/binding/home_empty_binding.dart';
import 'package:pbm_app/presentation/signup_screen/binding/signup_binding.dart';
import 'package:pbm_app/presentation/signup_screen/signup_screen.dart';
import 'package:pbm_app/presentation/viewroutine_screen/viewroutine_screen.dart';
import 'package:pbm_app/presentation/viewroutine_screen/binding/viewroutine_binding.dart';
import 'package:pbm_app/presentation/tasktimerpage_screen/tasktimerpage_screen.dart';
import 'package:pbm_app/presentation/tasktimerpage_screen/binding/tasktimerpage_binding.dart';
import 'package:pbm_app/presentation/routinefinishedpage_screen/routinefinishedpage_screen.dart';
import 'package:pbm_app/presentation/routinefinishedpage_screen/binding/routinefinishedpage_binding.dart';
import 'package:pbm_app/presentation/launch_screen/launch_screen.dart';
import 'package:pbm_app/presentation/launch_screen/binding/launch_binding.dart';
import 'package:pbm_app/presentation/login_slide_two_screen/login_slide_two_screen.dart';
import 'package:pbm_app/presentation/login_slide_two_screen/binding/login_slide_two_binding.dart';
import 'package:pbm_app/presentation/login_slide_three_screen/login_slide_three_screen.dart';
import 'package:pbm_app/presentation/login_slide_three_screen/binding/login_slide_three_binding.dart';
import 'package:pbm_app/presentation/pack_detail_container_screen/pack_detail_container_screen.dart';
import 'package:pbm_app/presentation/pack_detail_container_screen/binding/pack_detail_container_binding.dart';
import 'package:pbm_app/presentation/pack_detail_swipe_up_unlock_screen/pack_detail_swipe_up_unlock_screen.dart';
import 'package:pbm_app/presentation/pack_detail_swipe_up_unlock_screen/binding/pack_detail_swipe_up_unlock_binding.dart';
import 'package:pbm_app/presentation/white_noise_page/pack_detail_composer_screen/pack_detail_composer_screen.dart';
import 'package:pbm_app/presentation/white_noise_page/pack_detail_composer_screen/binding/pack_detail_composer_binding.dart';
import 'package:pbm_app/presentation/newroutine_screen/newroutine_screen.dart';
import 'package:pbm_app/presentation/newroutine_screen/binding/newroutine_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_four_screen/upcoming_booking_four_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_four_screen/binding/upcoming_booking_four_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_one_screen/upcoming_booking_one_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_one_screen/binding/upcoming_booking_one_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_three_screen/upcoming_booking_three_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_three_screen/binding/upcoming_booking_three_binding.dart';
import 'package:pbm_app/presentation/map_screen/map_screen.dart';
import 'package:pbm_app/presentation/map_screen/binding/map_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_five_screen/upcoming_booking_five_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_five_screen/binding/upcoming_booking_five_binding.dart';
import 'package:pbm_app/presentation/past_booking_details_one_screen/past_booking_details_one_screen.dart';
import 'package:pbm_app/presentation/past_booking_details_one_screen/binding/past_booking_details_one_binding.dart';
import 'package:pbm_app/presentation/past_booking_details_screen/past_booking_details_screen.dart';
import 'package:pbm_app/presentation/past_booking_details_screen/binding/past_booking_details_binding.dart';
import 'package:pbm_app/presentation/nurse_s_details_screen/nurse_s_details_screen.dart';
import 'package:pbm_app/presentation/nurse_s_details_screen/binding/nurse_s_details_binding.dart';
import 'package:pbm_app/presentation/booking_step_one_screen/booking_step_one_screen.dart';
import 'package:pbm_app/presentation/booking_step_one_screen/binding/booking_step_one_binding.dart';
import 'package:pbm_app/presentation/booking_step_two_screen/booking_step_two_screen.dart';
import 'package:pbm_app/presentation/booking_step_two_screen/binding/booking_step_two_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_two_screen/upcoming_booking_two_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_two_screen/binding/upcoming_booking_two_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_one1_screen/upcoming_booking_one1_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_one1_screen/binding/upcoming_booking_one1_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_screen/upcoming_booking_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_screen/binding/upcoming_booking_binding.dart';
import 'package:pbm_app/presentation/calling_nurse_screen/calling_nurse_screen.dart';
import 'package:pbm_app/presentation/calling_nurse_screen/binding/calling_nurse_binding.dart';
import 'package:pbm_app/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:pbm_app/presentation/chat_one_screen/binding/chat_one_binding.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/chat_screen/chat_screen.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/chat_screen/binding/chat_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking1_screen/upcoming_booking1_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking1_screen/binding/upcoming_booking1_binding.dart';
import 'package:pbm_app/presentation/upcoming_booking_two1_screen/upcoming_booking_two1_screen.dart';
import 'package:pbm_app/presentation/upcoming_booking_two1_screen/binding/upcoming_booking_two1_binding.dart';
import 'package:pbm_app/presentation/usage_follow_up_negative_selection_screen/usage_follow_up_negative_selection_screen.dart';
import 'package:pbm_app/presentation/usage_follow_up_negative_selection_screen/binding/usage_follow_up_negative_selection_binding.dart';
import 'package:pbm_app/presentation/favourites_with_selection_screen/favourites_with_selection_screen.dart';
import 'package:pbm_app/presentation/favourites_with_selection_screen/binding/favourites_with_selection_binding.dart';
import 'package:pbm_app/presentation/support_v1_0_screen/support_v1_0_screen.dart';
import 'package:pbm_app/presentation/support_v1_0_screen/binding/support_v1_0_binding.dart';
import 'package:pbm_app/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:pbm_app/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:pbm_app/presentation/already_signed_up_screen/already_signed_up_screen.dart';
import 'package:pbm_app/presentation/already_signed_up_screen/binding/already_signed_up_binding.dart';
import 'package:pbm_app/presentation/already_signed_up_one_screen/already_signed_up_one_screen.dart';
import 'package:pbm_app/presentation/already_signed_up_one_screen/binding/already_signed_up_one_binding.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/dashboard_screen/dashboard_screen.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/dashboard_screen/binding/dashboard_binding.dart';
import 'package:pbm_app/presentation/appointments_screen/appointments_screen.dart';
import 'package:pbm_app/presentation/appointments_screen/binding/appointments_binding.dart';
import 'package:pbm_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:pbm_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:pbm_app/presentation/white_noise_page/white_noise_page.dart';

import '../presentation/nurse_profile/binding/onboarding_two_binding.dart';
import '../presentation/white_noise_page/binding/binding.dart';
import '../presentation/white_noise_page/now_playing/binding/now_playing_binding.dart';
import '../presentation/white_noise_page/now_playing/now_playing_screen.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String pricingScreen = '/pricing_screen';

  static const String servicesScreen = '/services_screen';

  static const String chooseAgeScreen = '/choose_age_screen';

  static const String chooseGenderAgeScreen = '/choose_gender_age_screen';

  static const String homeScreen = '/home_screen';

  static const String selectBabyScreen = '/baby_screen';
  static const String addBabyScreen = '/add_baby_screen';

  static const String home1Screen = '/home1_screen';

  static const String homeOnboardingContainerScreen =
      '/home_onboarding_container_screen';

  static const String packDetailComposerContainerPage =
      '/pack_detail_composer_container_page';
    

  static const String homeEmptyScreen = '/home_empty_screen';

  static const String viewroutineScreen = '/viewroutine_screen';

  static const String tasktimerpageScreen = '/tasktimerpage_screen';

  static const String routinefinishedpageScreen = '/routinefinishedpage_screen';

  static const String launchScreen = '/launch_screen';

  static const String loginSlideTwoScreen = '/login_slide_two_screen';

  static const String loginSlideThreeScreen = '/login_slide_three_screen';

  static const String packDetailContainerScreen =
      '/pack_detail_container_screen';

  static const String packDetailContainer1Page = '/pack_detail_container1_page';

  static const String packDetailSwipeUpUnlockScreen =
      '/pack_detail_swipe_up_unlock_screen';

  static const String packDetailComposerScreen = '/pack_detail_composer_screen';

  static const String newroutineScreen = '/newroutine_screen';

  static const String upcomingBookingFourScreen =
      '/upcoming_booking_four_screen';

  static const String upcomingBookingOneScreen = '/upcoming_booking_one_screen';

  static const String upcomingBookingThreeScreen =
      '/upcoming_booking_three_screen';

  static const String mapScreen = '/map_screen';

  static const String upcomingBookingFiveScreen =
      '/upcoming_booking_five_screen';

  static const String pastBookingDetailsOneScreen =
      '/past_booking_details_one_screen';

  static const String pastBookingDetailsScreen = '/past_booking_details_screen';

  static const String nurseSDetailsScreen = '/nurse_s_details_screen';

  static const String bookingStepOneScreen = '/booking_step_one_screen';

  static const String bookingStepTwoScreen = '/booking_step_two_screen';

  static const String upcomingBookingTwoScreen = '/upcoming_booking_two_screen';

  static const String upcomingBookingOne1Screen =
      '/upcoming_booking_one1_screen';

  static const String upcomingBookingScreen = '/upcoming_booking_screen';

  static const String callingNurseScreen = '/calling_nurse_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String chatScreen = '/chat_screen';

  static const String upcomingBooking1Screen = '/upcoming_booking1_screen';

  static const String upcomingBookingTwo1Screen =
      '/upcoming_booking_two1_screen';

  static const String usageFollowUpNegativeSelectionScreen =
      '/usage_follow_up_negative_selection_screen';

  static const String favouritesWithSelectionScreen =
      '/favourites_with_selection_screen';

  static const String supportV10Screen = '/support_v1_0_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String alreadySignedUpScreen = '/already_signed_up_screen';

  static const String alreadySignedUpOneScreen =
      '/already_signed_up_one_screen';

  static const String alreadySignedUpTwoScreen =
      '/already_signed_up_two_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appointmentsScreen = '/appointments_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String parentSignupScreen = '/signup_screen';
  static const String pumpingScreen = '/pumping_screen';
  
  
  // static const String nowPlayingScreen = '/now_playing_screen';
  static const String nurseProfileDetails = '/nurse_profile_details';

  static List<GetPage> pages = [

    //  GetPage(
    //   name: packDetailComposerContainer1Screen,
    //   page: () => PackDetailComposerContainer1Screen(),
    //   bindings: [
    //     PackDetailComposerContainer1Binding(),
    //   ],
    // ),
    // GetPage(
    //   name: playerTabContainerScreen,
    //   page: () => PlayerTabContainerScreen(),
    //   bindings: [
    //     PlayerTabContainerBinding(),
    //   ],
    // ),
    GetPage(
      name: nurseProfileDetails,
      page: () => const NurseProfileDetails(),
      bindings: [
        NurseProfileDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),



    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),

    GetPage(
      name: alreadySignedUpTwoScreen,
      page: () => AlreadySignedUpTwoScreen(),
      bindings: [
        AlreadySignedUpTwoBinding(),
      ],
    ),
    GetPage(
      name: pricingScreen,
      page: () => PricingScreen(),
      bindings: [
        PricingBinding(),
      ],
    ),
    GetPage(
      name: parentSignupScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: servicesScreen,
      page: () => ServicesScreen(),
      bindings: [
        ServicesBinding(),
      ],
    ),
    GetPage(
      name: chooseAgeScreen,
      page: () => ChooseAgeScreen(),
      bindings: [
        ChooseAgeBinding(),
      ],
    ),
    GetPage(
      name: chooseGenderAgeScreen,
      page: () => ChooseGenderAgeScreen(),
      bindings: [
        ChooseGenderAgeBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    // GetPage(
    //   name: home1Screen,
    //   page: () => Home1Screen(),
    //   bindings: [
    //     Home1Binding(),
    //   ],
    // ),

    GetPage(
      name: selectBabyScreen,
      page: () => SelectBabyScreen(),
      bindings: [
        SelectBabyBinding(),
      ],
    ),

        GetPage(
      name: pumpingScreen,
      page: () => PumpingScreen(),
      bindings: [
        PumpingBinding(),
      ],
    ),


    GetPage(
      name: addBabyScreen,
      page: () => AddBabyScreen(),
      bindings: [
        AddBabyBind(),
      ],
    ),

    GetPage(
      name: homeOnboardingContainerScreen,
      page: () => HomeOnboardingContainerScreen(),
      bindings: [
        HomeOnboardingContainerBinding(),
      ],
    ),
    GetPage(
      name: homeEmptyScreen,
      page: () => HomeEmptyScreen(),
      bindings: [
        HomeEmptyBinding(),
      ],
    ),
    GetPage(
      name: viewroutineScreen,
      page: () => ViewroutineScreen(),
      bindings: [
        ViewroutineBinding(),
      ],
    ),
    GetPage(
      name: tasktimerpageScreen,
      page: () => TasktimerpageScreen(),
      bindings: [
        TasktimerpageBinding(),
      ],
    ),
    GetPage(
      name: routinefinishedpageScreen,
      page: () => RoutinefinishedpageScreen(),
      bindings: [
        RoutinefinishedpageBinding(),
      ],
    ),
    GetPage(
      name: launchScreen,
      page: () => LaunchScreen(),
      bindings: [
        LaunchBinding(),
      ],
    ),
    GetPage(
      name: loginSlideTwoScreen,
      page: () => LoginSlideTwoScreen(),
      bindings: [
        LoginSlideTwoBinding(),
      ],
    ),
    GetPage(
      name: loginSlideThreeScreen,
      page: () => LoginSlideThreeScreen(),
      bindings: [
        LoginSlideThreeBinding(),
      ],
    ),
    GetPage(
      name: packDetailContainerScreen,
      page: () => PackDetailContainerScreen(),
      bindings: [
        PackDetailContainerBinding(),
      ],
    ),
    GetPage(
      name: packDetailSwipeUpUnlockScreen,
      page: () => PackDetailSwipeUpUnlockScreen(),
      bindings: [
        PackDetailSwipeUpUnlockBinding(),
      ],
    ),
    GetPage(
      name: packDetailComposerScreen,
      page: () => WhiteNoisePage(),
      bindings: [
        WhiteNoiseBinding(),
      ],
    ),
    GetPage(
      name: newroutineScreen,
      page: () => NewroutineScreen(),
      bindings: [
        NewroutineBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingFourScreen,
      page: () => UpcomingBookingFourScreen(),
      bindings: [
        UpcomingBookingFourBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingOneScreen,
      page: () => UpcomingBookingOneScreen(),
      bindings: [
        UpcomingBookingOneBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingThreeScreen,
      page: () => UpcomingBookingThreeScreen(),
      bindings: [
        UpcomingBookingThreeBinding(),
      ],
    ),
    GetPage(
      name: mapScreen,
      page: () => MapScreen(),
      bindings: [
        MapBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingFiveScreen,
      page: () => UpcomingBookingFiveScreen(),
      bindings: [
        UpcomingBookingFiveBinding(),
      ],
    ),
    GetPage(
      name: pastBookingDetailsOneScreen,
      page: () => PastBookingDetailsOneScreen(),
      bindings: [
        PastBookingDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: pastBookingDetailsScreen,
      page: () => PastBookingDetailsScreen(),
      bindings: [
        PastBookingDetailsBinding(),
      ],
    ),
    GetPage(
      name: nurseSDetailsScreen,
      page: () => NurseSDetailsScreen(),
      bindings: [
        NurseSDetailsBinding(),
      ],
    ),
    GetPage(
      name: bookingStepOneScreen,
      page: () => BookingStepOneScreen(),
      bindings: [
        BookingStepOneBinding(),
      ],
    ),
    GetPage(
      name: bookingStepTwoScreen,
      page: () => BookingStepTwoScreen(),
      bindings: [
        BookingStepTwoBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingTwoScreen,
      page: () => UpcomingBookingTwoScreen(),
      bindings: [
        UpcomingBookingTwoBinding(),
      ],
    ),
    GetPage(
      name: upcomingBookingOne1Screen,
      page: () => UpcomingBookingOne1Screen(),
      bindings: [
        UpcomingBookingOne1Binding(),
      ],
    ),
    GetPage(
      name: upcomingBookingScreen,
      page: () => UpcomingBookingScreen(),
      bindings: [
        UpcomingBookingBinding(),
      ],
    ),
    GetPage(
      name: callingNurseScreen,
      page: () => CallingNurseScreen(),
      bindings: [
        CallingNurseBinding(),
      ],
    ),
    GetPage(
      name: chatOneScreen,
      page: () => ChatOneScreen(),
      bindings: [
        ChatOneBinding(),
      ],
    ),
    // GetPage(
    //   name: chatScreen,
    //   page: () => ChatScreen(),
    //   bindings: [
    //     ChatBinding(),
    //   ],
    // ),
    GetPage(
      name: upcomingBooking1Screen,
      page: () => UpcomingBooking1Screen(),
      bindings: [
        UpcomingBooking1Binding(),
      ],
    ),
    GetPage(
      name: upcomingBookingTwo1Screen,
      page: () => UpcomingBookingTwo1Screen(),
      bindings: [
        UpcomingBookingTwo1Binding(),
      ],
    ),
    GetPage(
      name: usageFollowUpNegativeSelectionScreen,
      page: () => UsageFollowUpNegativeSelectionScreen(),
      bindings: [
        UsageFollowUpNegativeSelectionBinding(),
      ],
    ),
    GetPage(
      name: favouritesWithSelectionScreen,
      page: () => FavouritesWithSelectionScreen(),
      bindings: [
        FavouritesWithSelectionBinding(),
      ],
    ),
    GetPage(
      name: supportV10Screen,
      page: () => SupportV10Screen(),
      bindings: [
        SupportV10Binding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: alreadySignedUpScreen,
      page: () => AlreadySignedUpScreen(),
      bindings: [
        AlreadySignedUpBinding(),
      ],
    ),
    GetPage(
      name: alreadySignedUpOneScreen,
      page: () => AlreadySignedUpOneScreen(),
      bindings: [
        AlreadySignedUpOneBinding(),
      ],
    ),
    // GetPage(
    //   name: dashboardScreen,
    //   page: () => DashboardScreen(),
    //   bindings: [
    //     DashboardBinding(),
    //   ],
    // ),
    GetPage(
      name: dashboardScreen,
      page: () => NurseDashboardScreenPage(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: appointmentsScreen,
      page: () => AppointmentsScreen(),
      bindings: [
        AppointmentsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    )
  ];
}
