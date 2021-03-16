import 'dart:convert';
import 'dart:io';

import 'package:ShopAfrika/models/evening_market.dart';
import 'package:ShopAfrika/models/featured.dart';
import 'package:ShopAfrika/models/products_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart';

class HttpService {
  final String pdtUrl = "https://api.shopafrika.net/public/api/product-list";
  final String homeBrandUrl =
      "https://api.shopafrika.net/public/api/product-list";
  final String evenMktUrl =
      "https://api.shopafrika.net/public/api/product-list";

  Future<void> deleteCacheDir() async {
    String fileName = "productData.json";
    String brandName = "getBrand.json";
    String evenName = "getEvening.json";
    var dir = await getTemporaryDirectory();

    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      file.deleteSync(recursive: true);
      print(file);
    }

    File brandFile = new File(dir.path + "/" + brandName);
    if (brandFile.existsSync()) {
      brandFile.deleteSync(recursive: true);
    }

    File evenFile = new File(dir.path + "/" + evenName);
    if (evenFile.existsSync()) {
      evenFile.deleteSync(recursive: true);
    }
    getProducts();
    getFeatured();
    getEveningSales();
  }

  Future<List<Product>> getProducts() async {
    String fileName = "productData.json";
    var dir = await getTemporaryDirectory();
    List<Product> products = [];
    //===================calling from cache========================
    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      List<dynamic> body = jsonDecode(jsonData);
      List<Product> cacheProducts =
          body.map((dynamic item) => Product.fromJson(item)).toList();
      return cacheProducts;
    } else {
      // =====================fetching directly from the api===================
      print("Loading from Apii");
      try {
        Response res = await get(pdtUrl);

        if (res.statusCode == 200) {
          List<dynamic> body = jsonDecode(res.body);

          products =
              body.map((dynamic item) => Product.fromJson(item)).toList();
          file.writeAsStringSync(res.body, flush: true, mode: FileMode.write);
        } else {
          throw Exception("Can't get pdt");
        }
      } catch (err) {
        print('========Error====== $err');
      }
      return products;
    }
  }

  Future<List<FeaturedModel>> getFeatured() async {
    String fileName = "getBrand.json";
    var dir = await getTemporaryDirectory();

    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      List<dynamic> body = jsonDecode(jsonData);
      List<FeaturedModel> featured =
          body.map((dynamic item) => FeaturedModel.fromJson(item)).toList();
      return featured;
    } else {
      print("Loading from Apii");
      Response res = await get(homeBrandUrl);

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<FeaturedModel> featured =
            body.map((dynamic item) => FeaturedModel.fromJson(item)).toList();
        // print(HomeBrands);
        file.writeAsStringSync(res.body, flush: true, mode: FileMode.write);
        return featured;
      } else {
        throw "Can't get brand";
      }
    }
  }

  Future<List<EveningMarketModel>> getEveningSales() async {
    String fileName = "getEvening.json";
    var dir = await getTemporaryDirectory();

    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      List<dynamic> body = jsonDecode(jsonData);
      List<EveningMarketModel> eveningMarket = body
          .map((dynamic item) => EveningMarketModel.fromJson(item))
          .toList();
      return eveningMarket;
    } else {
      print("Loading from Apii");
      Response res = await get(evenMktUrl);

      if (res.statusCode == 200) {
        List<dynamic> body = jsonDecode(res.body);

        List<EveningMarketModel> eveningMarket = body
            .map((dynamic item) => EveningMarketModel.fromJson(item))
            .toList();
        // print(HomeBrands);
        file.writeAsStringSync(res.body, flush: true, mode: FileMode.write);
        return eveningMarket;
      } else {
        throw "Can't get brand";
      }
    }
  }
}
