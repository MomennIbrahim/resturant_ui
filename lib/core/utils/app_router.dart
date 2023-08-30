import 'package:go_router/go_router.dart';
import 'package:resturant_ui_app/features/authentication/presentation/authentication_screen.dart';
import 'package:resturant_ui_app/features/layout/presentation/views/layout_screen.dart';
import 'package:resturant_ui_app/features/onBoarding/presentation/on_boarding_screen.dart';

abstract class AppRouter {
  static const kAuthenticationScreen = '/loginScreen';
  static const kLayoutScreen = '/layoutScreen';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoaringScreen(),
    ),
    GoRoute(
      path: kAuthenticationScreen,
      builder: (context, state) => const AuthenticationScreen(),
    ),

    GoRoute(
      path: kLayoutScreen,
      builder: (context, state) => const LayoutScreen(),
    ),
  ]);
}
