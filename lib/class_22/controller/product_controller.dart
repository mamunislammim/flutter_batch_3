import 'dart:developer';
import 'package:flutter_batch_3/class_22/database/product_list.dart';
import 'package:flutter_batch_3/class_22/model/product.dart';

class ProductController {
  static Future<List<ProductModel>> getProduct() async {
    await Future.delayed(const Duration(seconds: 3));

    List<ProductModel>  list = [];
    log("==========111==============L : ${list.length}");
    for (var i in ProductListDatabase.productList) {
       ProductModel data = ProductModel.fromJson(i);
      list.add(data);
    }
    log("==========2222==============L : ${list.length}");
    return list;
  }
}
