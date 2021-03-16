import 'package:ShopAfrika/components/comps.dart';
import 'package:ShopAfrika/components/fetch_data.dart';
import 'package:ShopAfrika/models/featured.dart';
import 'package:ShopAfrika/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  HttpService _httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
      // height: 450.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.grey[100],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            // padding: EdgeInsets.only(left: 3.0),
            width: MediaQuery.of(context).size.width / 1.06,
            height: 40.0,
            decoration: BoxDecoration(
              color: const Color(0xffe61d1d),
              // color: Colors.deepOrange[400],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0)),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 3.0),
              width: double.infinity,
              child: Text(
                "Featured",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
          FutureBuilder(
            future: _httpService.getFeatured(),
            builder: (BuildContext context,
                AsyncSnapshot<List<FeaturedModel>> snapshot) {
              if (snapshot.hasData) {
                List<FeaturedModel> homeBrands = snapshot.data;
                List<FeaturedModel> newBrands = Comps.shuffle(homeBrands);

                return Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 12.0),
                  height: 380,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3.5 / 5.2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 2.0),
                          // height: 200.0,
                          // width: MediaQuery.of(context)
                          //         .size
                          //         .width /
                          //     5.7,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.grey[300],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                    child: Container(
                                      // height: 100.0,
                                      // width: MediaQuery.of(context)
                                      //         .size
                                      //         .width /
                                      //     5.6,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://shopafrika.net/dashboard/uploads/${newBrands[index].image1}"),
                                            // image: AssetImage(
                                            //     "assets/images/gas.jpg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetailsScreen()));
                                    }),
                              ),
                              Container(
                                height: 50.0,
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${newBrands[index].productName}",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            // color: Colors.white,
                                          ),
                                        )),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\u20A6${Comps.format(newBrands[index].price)}",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          // color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                );
              }
              return Comps.shimmerImage();
            },
          ),
        ],
      ),
    );
  }
}
