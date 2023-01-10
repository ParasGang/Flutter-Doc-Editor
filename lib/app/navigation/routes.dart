import 'package:routemaster/routemaster.dart';
import 'transition_page.dart';
import '../components/auth/auth.dart';

const _login = "/login";
const _register = "/register";
const _document = "/document";
const _newDocument = "/newDocument";

abstract class AppRoutes {
  static String get login => _login;
  static String get register => _register;
  static String get document => _document;
  static String get newDocument => _newDocument;
}

final routesLoggedout =
    RouteMap(onUnknownRoute: (_) => Redirect(_login), routes: {
  _login: (route) => const TransitionPage(
        child: LoginPage(),
      ),
  _register: (route) => TransitionPage(child: RegisterPage()),
});
