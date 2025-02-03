class Routes {
  static const String welcome = '/';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String home = '/home';
  static const String orders = '/orders';

  static String profile(String userId) => '/profile/$userId';
}
