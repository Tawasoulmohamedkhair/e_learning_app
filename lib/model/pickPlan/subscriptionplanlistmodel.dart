class SubscriptionPlan {
  final double price;
  final String billingPeriod;
  final double monthlyPrice;
  final List<String> features;

  SubscriptionPlan(
    this.price,
    this.billingPeriod,
    this.monthlyPrice,
    this.features,
  );
}
