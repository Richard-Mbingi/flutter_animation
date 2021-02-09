import 'package:logo_animation/screens/screens.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
        name: '/methodOne',
        builder: (context, args, params) => MethodOne(),
      ),
      SailorRoute(
        name: '/methodTwo',
        builder: (context, args, params) => MethodTwo(),
      ),
      SailorRoute(
        name: '/methodThree',
        builder: (context, args, params) => MethodThree(),
      ),
    ]);
  }
}

final methodOneRoute = Routes.sailor.navigate('/methodOne');
final methodTwoRoute = Routes.sailor.navigate('/methodTwo');
final methodThreeRoute = Routes.sailor.navigate('/methodThree');
