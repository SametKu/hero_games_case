enum NavigationEnums { deafult, login, doctorDetail, onboarding }

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.deafult:
        return '/deafult';
      case NavigationEnums.login:
        return '/login';
      case NavigationEnums.doctorDetail:
        return '/doctorDetail';
      case NavigationEnums.onboarding:
        return '/onboarding';
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
      case '/onboarding':
        return NavigationEnums.onboarding;
      default:
        throw Exception('$val not found in $this');
    }
  }
}
