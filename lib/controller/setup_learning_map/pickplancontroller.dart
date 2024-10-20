import 'package:e_learning_app/model/pickPlan/pickplanmodel.dart';
import 'package:e_learning_app/model/pickPlan/subscriptionplanlistmodel.dart';
import 'package:get/get.dart';

// Controller for Pickplanmodel
class PickPlanController extends GetxController {
  // Observable variables for managing the state of Pickplanmodel
  var pickPlanModel = Rxn<Pickplanmodel>();
  var subscriptionPlans = <SubscriptionPlan>[].obs;

  // This could be set initially from  API
  var isLoading = true.obs;

  // Initialize Pickplanmodel fetch from an API
  @override
  void onInit() {
    super.onInit();
    fetchPickPlanModel(); // Call fetch or initialization logic
  }

  // Method to fetch or initialize Pickplanmodel
  void fetchPickPlanModel() {
    // Simulating data fetching with a delay
    Future.delayed(Duration(seconds: 2), () {
      var subscriptionPlans = [
        SubscriptionPlan(
          100.99,
          'Billed every year',
          8.00,
          ['All answers, no ads', 'All answers, no ads', 'All answers, no ads'],
        ),
        SubscriptionPlan(
          20.0,
          'Billed every year',
          8.00,
          ['All answers, no ads', 'All answers, no ads', 'All answers, no ads'],
        ),
      ];

      // Set the Pickplanmodel data
      pickPlanModel.value = Pickplanmodel(
        img: 'assets/images/home.png',
        discount: -50,
        //  plan: subscriptionPlans,
      );

      // Stop loading after data is fetched
      isLoading.value = false;
    });
  }

  // Update discount in Pickplanmodel (example logic)
  void updateDiscount(int newDiscount) {
    if (pickPlanModel.value != null) {
      pickPlanModel.value = Pickplanmodel(
        img: pickPlanModel.value!.img,
        discount: newDiscount,
      );
    }
  }

  void loadPlans() {
    var plans = [
      SubscriptionPlan(
        100.99,
        'Billed every year',
        8.00,
        ['All answers, no ads', 'All answers, no ads', 'All answers, no ads'],
      ),
    ];
    subscriptionPlans.assignAll(plans);
  }
}
