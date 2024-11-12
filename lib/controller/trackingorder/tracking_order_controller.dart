import 'package:e_learning_app/model/tracking_order_model.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  var orderStatus = OrderStatus(
    estimatedDeliveryTime: '4-6 Days',
    deliveryWindow: 'Sat 13 - Tue 16 Mar',
    currentStatus: 'On the way',
  ).obs;

  void updateStatus(String status) {
    orderStatus.update((order) {
      order?.currentStatus = status;
    });
  }
}
