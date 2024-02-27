import 'package:get/get.dart';

import '../modules/gamePage/bindings/game_page_binding.dart';
import '../modules/gamePage/views/game_page_view.dart';
import '../modules/playerRegistrationPage/bindings/player_registration_page_binding.dart';
import '../modules/playerRegistrationPage/views/player_registration_page_view.dart';
import '../modules/roomsPage/bindings/rooms_page_binding.dart';
import '../modules/roomsPage/views/rooms_page_view.dart';
import '../modules/splashPage/bindings/splash_page_binding.dart';
import '../modules/splashPage/views/splash_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.PLAYER_REGISTRATION_PAGE,
      page: () => const PlayerRegistrationPageView(),
      binding: PlayerRegistrationPageBinding(),
    ),
    GetPage(
      name: _Paths.ROOMS_PAGE,
      page: () => const RoomsPageView(),
      binding: RoomsPageBinding(),
    ),
    GetPage(
      name: _Paths.GAME_PAGE,
      page: () => const GamePageView(),
      binding: GamePageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
    ),
  ];
}
