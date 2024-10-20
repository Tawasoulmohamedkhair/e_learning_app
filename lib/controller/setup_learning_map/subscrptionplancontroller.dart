import 'package:e_learning_app/model/pickPlan/subscriptionplanlistmodel.dart';
import 'package:get/get.dart';

class subscrptionplancontroller extends GetxController {
  // Observable list of subscription plans
  var subscriptionPlans = <SubscriptionPlan>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadPlans();
  }

  // Load subscription plans into the list (dummy data for now)
  void loadPlans() {
    var plans = [
      SubscriptionPlan(
        100.99,
        'Billed every year',
        8.00,
        ['All answers, no ads', 'All answers, no ads', 'All answers, no ads'],
      ),
      SubscriptionPlan(
        100.99,
        'Billed every year',
        8.00,
        ['All answers, no ads', 'All answers, no ads', 'All answers, no ads'],
      ),
    ];
    subscriptionPlans.assignAll(plans);
    update();
  }
}
