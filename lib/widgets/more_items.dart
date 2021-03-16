import 'package:ShopAfrika/components/comps.dart';
import 'package:ShopAfrika/components/fetch_data.dart';
import 'package:ShopAfrika/models/products_model.dart';
import 'package:ShopAfrika/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class MoreItems extends StatelessWidget {
  final HttpService _httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500.0,
      // child: RelatedItems(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: _httpService.getProducts(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Product>> snapshot) {
                if (snapshot.hasData) {
                  List<Product> products = snapshot.data;
                  return Wrap(
                    children: products
                        .map((Product product) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 7.0),
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          bottom: 0.0, left: 0.0),
                                      height: 195.0,
                                      width: MediaQuery.of(context).size.width /
                                          2.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://shopafrika.net/dashboard/uploads/${product.image1}"),
                                            fit: BoxFit.cover),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: double.infinity,
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, left: 10.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                              ),
                                              child: Text(
                                                "${product.productName}",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.white,
                                                ),
                                              )),
                                          // child: Text("${product.userId}")),
                                          Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.only(
                                                bottom: 0.0, left: 10.0),
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "\u20A6${Comps.format(product.price)}",
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailsScreen())),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
