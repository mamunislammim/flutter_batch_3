import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/class_22/controller/product_controller.dart';
import 'package:flutter_batch_3/class_22/view/custom_widget/custom_text.dart';
import 'package:flutter_batch_3/class_22/view/ui/product_screen/widget/product_card.dart';

import '../../../model/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDataLoading = false;
  List<ProductModel> finalProductList = [];
  List<ProductModel> productList = [];

  fetchProducts() async {
    isDataLoading = true;
    finalProductList = await ProductController.getProduct();
    productList = finalProductList;
    isDataLoading = false;
    setState(() {});
  }

  searchFun({required String searchValue}) {
    log("=============searchValue : $searchValue============");

    productList = finalProductList.where(
        // (v) => v.name!.toLowerCase().contains(searchValue.toLowerCase()),
        (v) => double.parse("${v.regularPrice!.replaceAll("\$", "")}") > double.parse(searchValue)).toList();
    setState(() {});
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: CustomTextWidget(
          text: 'Product Screen : ${productList.length}',
          fColor: Colors.white,
          fSize: 25,
          fWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (v) {
                if (v != "") {
                  searchFun(searchValue: v);
                } else {
                  productList = finalProductList;
                  setState(() {});
                }
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                hintText: "Search here..",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            isDataLoading == true
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: productList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              childAspectRatio: .9,
                              crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        ProductModel data = productList[index];
                        return ProductCard(data: data);
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
