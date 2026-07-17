enum RouteNames {
  //Auth
  onboarding('/auth/onboarding'),
  login('/auth/login'),
  signup('/auth/signup'),
  verifyEmail('/auth/signup/verify_email'),
  forgetPassword('/auth/login/forget_password'),
  resetPassword('/auth/login/forget_password/reset_password'),

  // Common
  successScreen('/success_screen'),

  // Dashboard
  home('/'),
  store('/store'),
  wishList('/wish_list'),
  settings('/settings'),

  // Settings
  profile('/profile'),

  // Products
  productDetails('/product_details'),
  productReviews('/product_details/reviews');

  final String path;

  const RouteNames(this.path);
}
