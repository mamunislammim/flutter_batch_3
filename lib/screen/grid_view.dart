import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  List<Map<String, dynamic>> productList = [
    {
      "img":
          "https://urturms.com/cdn/shop/files/01_58661e21-1ddb-4a1b-9d52-5d5952578ba7.jpg?v=1725880530&width=3840",
      "product_name":
          "Polo T Shirt Polo T ShirtPolo T ShirtPolo T Shirt Polo T ShirtPolo T Shirt",
      "sale_price": 699.00,
      "regular_price": 850,
    },
    {
      "img":
          "https://urturms.com/cdn/shop/files/01_58661e21-1ddb-4a1b-9d52-5d5952578ba7.jpg?v=1725880530&width=3840",
      "product_name": "T shirt for Men",
      "sale_price": 500.00,
      "regular_price": 600,
    },
    {
      "img":
          "https://urturms.com/cdn/shop/files/01_58661e21-1ddb-4a1b-9d52-5d5952578ba7.jpg?v=1725880530&width=3840",
      "product_name": "Half Sleeve T Shirt",
      "sale_price": 500.00,
      "regular_price": 650,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViw"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: productList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .70,
              ),
              itemBuilder: (context, a) {
                return Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.blue,
                  child: SizedBox(
                    height: 400,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "${productList[a]['img']}",
                          height: 150,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${productList[a]['product_name']}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Discounted Price ${productList[a]['sale_price']} \$",
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Regular Price : ",
                                  ),
                                  Text(
                                    "${productList[a]['regular_price']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: SizedBox(
        height: 400,
        width: 200,
        child: Column(
          children: [
            Image.network(
              "https://urturms.com/cdn/shop/files/01_58661e21-1ddb-4a1b-9d52-5d5952578ba7.jpg?v=1725880530&width=3840",
              height: 180,
              width: 200,
              fit: BoxFit.fill,
            ),
            Text("T Shirt for Men"),
            Text("Price  500"),
          ],
        ),
      ),
    );
  }
}
