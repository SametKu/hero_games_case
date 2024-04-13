enum NavigationEnums { home, login, register, deafult }

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.home:
        return "/home";
      case NavigationEnums.login:
        return "/login";
      case NavigationEnums.register:
        return "/register";
      case NavigationEnums.deafult:
        return '/deafult';
    }
  }

  NavigationEnums normalValue(String? val) {
    switch (val) {
      case '/':
        return NavigationEnums.deafult;
      case '/home':
        return NavigationEnums.home;
      case '/login':
        return NavigationEnums.login;
      case '/register':
        return NavigationEnums.register;
      default:
        throw Exception('$val not found in $this');
    }
  }
}
