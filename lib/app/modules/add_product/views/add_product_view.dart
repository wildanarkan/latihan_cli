import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_cli/app/modules/products/controllers/products_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {

  ProductsController productC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.nameC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name Product"
              ),
            ),
            TextField(
              controller: controller.priceC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Price"
              ),
            ),
            ElevatedButton(onPressed: ()=>productC.addProduct(controller.nameC.text, controller.priceC.text), child: Text("ADD PRODUCT"))
          ],
        ),
        )
    );
  }
}
