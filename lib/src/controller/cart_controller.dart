part of 'controllers.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    //Get.snackbar(
    // "Tambahkan Produck",
    // "Kamu berhasil menambahkan ${product.name}",
    // snackPosition: SnackPosition.TOP,
    // );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get total => products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
