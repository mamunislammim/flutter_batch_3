

import 'package:flutter/material.dart';
import '../../../../model/product.dart';
import '../../../custom_widget/custom_text.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.data,
  });

  final ProductModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: FadeInImage(
              placeholder: NetworkImage(
                  "https://i.gifer.com/origin/34/34338d26023e5515f6cc8969aa027bca_w200.gif"),
              image: NetworkImage("${data.image}"),
              imageErrorBuilder: (context, i, j) {
                return Center(
                  child: Image.network(
                      "https://static.thenounproject.com/png/504708-200.png"),
                );
              },
            ),
            // child: Container(
            //   height: 200,
            //   width: MediaQuery.sizeOf(context).width,
            //   decoration: BoxDecoration(
            //     color: Colors.grey.shade200,
            //     borderRadius: BorderRadius.circular(10),
            //     image: DecorationImage(
            //       image: NetworkImage("${data.image}"),
            //     ),
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: "${data.name}",
                  maxLine: 2,
                  fWeight: FontWeight.w500,
                ),
                CustomTextWidget(
                  text: "${data.salePrice}",
                  fWeight: FontWeight.w500,
                  fSize: 12,
                ),
                Row(
                  children: [
                    CustomTextWidget(
                      text: "${data.regularPrice}",
                      textDecoration: TextDecoration.lineThrough,
                      fSize: 11,
                    ),
                    const SizedBox(width: 20),
                    CustomTextWidget(
                      text: "( ${data.discountPercentage} )",
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}