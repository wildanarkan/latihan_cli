import 'package:get/get.dart';

import 'package:latihan_cli/app/modules/products/controllers/test_controller.dart';

import '../controllers/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(
      () => TestController(),
    );
    Get.lazyPut<ProductsController>(
      () => ProductsController(),
    );
  }
}
