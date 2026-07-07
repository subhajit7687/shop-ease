enum RouteNames {
  //Auth
  onboarding('/auth/onboarding'),
  login('/auth/login'),
  signup('/auth/signup'),
  verifyEmail('/auth/signup/verify_email'),
  forgetPassword('/auth/login/forget_password'),
  resetPassword('/auth/login/forget_password/reset_password'),

  // Common
  successScreen('/success_screen');

  final String path;

  const RouteNames(this.path);
}
