enum NavigationEnums { deafult, login, doctorDetail, onBoarding }

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.deafult:
        return '/deafult';
      case NavigationEnums.login:
        return '/login';
      case NavigationEnums.doctorDetail:
        return '/doctorDetail';
      case NavigationEnums.onBoarding:
        return '/onBoarding';
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
      case '/onBoarding':
        return NavigationEnums.onBoarding;

      default:
        throw Exception('$val not found in $this');
    }
  }
}
