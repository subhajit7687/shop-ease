class PricingCalculator {
  PricingCalculator._();

  //Calculate Price basen on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    final taxRate = getTaxRateForLocation(location);
    final taxAmount = productPrice * taxRate;

    final shippingCost = getShippingCost(location);

    return productPrice + taxAmount + shippingCost;
  }

  //Calculate Shipping Cost
  static String calculateShippingCost(String location) {
    return getShippingCost(location).toStringAsFixed(2);
  }

  //Calculate Tax
  static String calculateTax(double productPrice, String location) {
    final taxRate = getTaxRateForLocation(location);
    final taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) => 0.10;

  static double getShippingCost(String location) => 5.00;
}
