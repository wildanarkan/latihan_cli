import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Ayam Geprek",
      "price": 15000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Ayam Pok Pok",
      "price": 5000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Ayam Kecap",
      "price": 10000,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": price
      });
      Get.back();
    }
  }
}
