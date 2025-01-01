abstract class AuthenticateState {
  bool get isHide;
}

class AuthenticateInitialState extends AuthenticateState {
  @override
  bool get isHide => false;
}

class AuthenticateLoadedState extends AuthenticateState {
  @override
  bool get isHide => true;
}
