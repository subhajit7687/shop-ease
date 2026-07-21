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
  cart('/cart'),
  checkout('/cart/checkout'),
  subCategories('/sub_categories'),

  // Settings
  profile('/profile'),
  addresses('/addresses'),
  addNewAddress('/addresses/new_address'),
  myOrders('/my_orders'),

  // Products
  productDetails('/product_details'),
  productReviews('/product_details/reviews'),
  allProducts('/all_products');

  final String path;

  const RouteNames(this.path);
}
