enum RouteNames {
  //Auth
  onboarding('/auth/onboarding'),
  login('/auth/login'),
  signup('/auth/signup'),
  verifyEmail('/auth/signup/verify_email');

  final String path;

  const RouteNames(this.path);
}
