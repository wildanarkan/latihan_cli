import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_cli/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsView'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
          child: Icon(Icons.add)),
      body: Obx(() => ListView.builder(
            itemCount: controller.allProducts.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(controller.allProducts[index]["name"]),
              subtitle: Text(controller.allProducts[index]["price"].toString()),
            ),
          )),
    );
  }
}
