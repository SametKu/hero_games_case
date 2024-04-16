enum NavigationEnums { deafult, login, doctorDetail }

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.deafult:
        return '/deafult';
      case NavigationEnums.login:
        return '/login';
      case NavigationEnums.doctorDetail:
        return '/doctorDetail';
    }
  }

  NavigationEnums normalValue(String? val) {
    switch (val) {
      case '/':
        return NavigationEnums.deafult;
      case '/login':
        return NavigationEnums.login;
      case '/doctorDetail':
        return NavigationEnums.doctorDetail;

      default:
        throw Exception('$val not found in $this');
    }
  }
}
