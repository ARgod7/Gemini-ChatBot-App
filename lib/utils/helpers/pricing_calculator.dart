class APricingCalculator {
  static double calcultateTotalPrice(double productPrize, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrize * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrize + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrize, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrize, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrize * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getShippingCost(String location) {
    return 5.00;
  }

  static double getTaxRateForLocation(String location) {
    return 0.3;
  }
}
