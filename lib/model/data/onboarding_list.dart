import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/onboarding_model.dart';
import 'package:get/get.dart';

AssetsImages images = Get.put(AssetsImages());

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      image: AssetsImages.online,
      title: "Online Learning\nPlatform",
      description:
          "A handful of model sentence structures,\n too generate Lorem which looks reason\n able."),
  OnBoardingModel(
      image: AssetsImages.schedule,
      title: 'Learn on your \n Schedule',
      description:
          "A handful of model sentence structures,\n too generate Lorem which looks reason\n able."),
  OnBoardingModel(
    image: AssetsImages.find,
    title: "Ready to find \n a Course",
    description:
        "A handful of model sentence structures,\n too generate Lorem which looks reason\n able.",
  ),
  OnBoardingModel(
      image: AssetsImages.explore,
      title: "Explore it \nToday!",
      description:
          "A handful of model sentence structures,\n too generate Lorem which looks reason\n able."),
];
