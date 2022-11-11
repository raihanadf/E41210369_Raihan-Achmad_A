import 'package:get/get.dart';
import '/model/product.dart';

class Purchase extends GetxController{
  var products =<Product>[].obs;
  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async {
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(1, "Demo Product 1","https://avatars.githubusercontent.com/u/12584890?v=4", 
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 2","https://avatars.githubusercontent.com/u/12584890?v=4",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 3","https://avatars.githubusercontent.com/u/12584890?v=4",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 4","https://avatars.githubusercontent.com/u/12584890?v=4",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 5","https://avatars.githubusercontent.com/u/12584890?v=4",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 6","https://avatars.githubusercontent.com/u/12584890?v=4",
              "This is that we are going to show by getX", 100.0),
    ];
    products.value = serverResponse;
  }

}
