import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/login_screen',
          page: LoginScreenRoute.page,
        ),
        // AutoRoute(
        //   path: '/otp_screen',
        //   page: OtpScreenRoute.page,
        // ),
      ];
}
