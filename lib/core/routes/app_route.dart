// import 'package:ibus_carrier_admin/features/forget&reset_password_screens/presentation/forget_passwrd_screen.dart';
// import 'package:ibus_carrier_admin/features/login_screen/views/signin_screen.dart';
// import 'package:ibus_carrier_admin/features/onBoarding_Screen/views/onboarding_screen.dart';
// import 'package:ibus_carrier_admin/features/activate_user_screen/views/activate_user_screen.dart';
// import 'package:ibus_carrier_admin/features/otp_verification_screen/views/otp_verification_screen.dart';
// import 'package:ibus_carrier_admin/features/profile&notification&locationScreens/views/create_profile_screen.dart';
// import 'package:ibus_carrier_admin/features/profile&notification&locationScreens/views/enable_location_screen.dart';
// import 'package:ibus_carrier_admin/features/profile&notification&locationScreens/views/enable_notification_screen.dart';
// import 'package:ibus_carrier_admin/features/signup_screen/views/signup_screen.dart';

// import './routes.dart';

// import 'package:flutter/material.dart';

// class AppRouter {
//   Route<dynamic> generateRoute(RouteSettings setting) {
//     switch (setting.name) {
//       case Routes.onBoardingScreen:
//         return MaterialPageRoute(
//           builder: (_) => const OnBoardingScreen(),
//         );
//       case Routes.sighupScreen:
//         return MaterialPageRoute(
//           builder: (_) => const SignupScreen(),
//         );
//       case Routes.signInScreen:
//         return MaterialPageRoute(
//           builder: (_) => const SignInScreen(),
//         );
//       case Routes.forgetPasswordScreen:
//         return MaterialPageRoute(
//           builder: (_) => const ForgetPAsswordScreen(),
//         );
//       case Routes.restPasswordScreen:
//         return MaterialPageRoute(
//           builder: (_) => const OtpVerificationScreen(),
//         );
//       case Routes.activateUserScreen:
//         return MaterialPageRoute(
//           builder: (_) => const ActivateUserScreen(),
//         );
//       case Routes.createProfileScreen:
//         return MaterialPageRoute(
//           builder: (_) => const CreateProfileScreen(),
//         );
//       case Routes.enableLocationScreen:
//         return MaterialPageRoute(
//           builder: (_) => const EnableLocationScreen(),
//         );
//       case Routes.enableNotificationScreen:
//         return MaterialPageRoute(
//           builder: (_) => const EnableNotificationScree(),
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text(
//                 'No Routes defiend for ${setting.name}',
//               ),
//             ),
//           ),
//         );
//     }
//   }
// }
