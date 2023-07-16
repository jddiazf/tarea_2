import '../pages/welcome.dart';
import '../pages/login.dart';

enum MyRoutes { home, welcome }

final routes = {
  MyRoutes.home.name: (context) => LoginPage(),
  MyRoutes.welcome.name: (context) => const Welcome(),
};
