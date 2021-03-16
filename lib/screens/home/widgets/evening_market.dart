import 'package:ShopAfrika/components/comps.dart';
import 'package:ShopAfrika/components/fetch_data.dart';
import 'package:ShopAfrika/models/evening_market.dart';
import 'package:ShopAfrika/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class EveningMarket extends StatelessWidget {
  final HttpService _httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.0, top: 0.0),
      // margin: EdgeInsets.symmetric(
      //     vertical: 25.0, horizontal: 12.0),
      // height: 440.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        // color: Colors.grey[100],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Evening Market",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          FutureBuilder(
            future: _httpService.getEveningSales(),
            builder: (BuildContext context,
                AsyncSnapshot<List<EveningMarketModel>> snapshot) {
              if (snapshot.hasData) {
                List<EveningMarketModel> evenMkts = snapshot.data;
                List<EveningMarketModel> newMkts = Comps.shuffle(evenMkts);
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  height: 380,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 4.3 / 5.9,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 2.0),
                          // height: 100.0,
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
                                      // height: 100,
                                      // width: MediaQuery.of(context)
                                      //         .size
                                      //         .width /
                                      //     5.6,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://shopafrika.net/dashboard/uploads/${newMkts[index].image1}"),
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
                                          "${newMkts[index].productName}",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            // color: Colors.white,
                                          ),
                                        )),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\u20A6${Comps.format(newMkts[index].price)}",
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
