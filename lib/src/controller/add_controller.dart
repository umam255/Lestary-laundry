part of 'controllers.dart';

class MyController extends GetxController {
  var order = 1.obs;
  var totalkilogram = 1.obs;
  var shirt = 1.obs;
  var tshirt = 0.obs;
  var underwear = 0.obs;
  var pants = 0.obs;
  int get sum => shirt.value + tshirt.value + underwear.value + pants.value;

  increment() {
    order.value++;
  }

  decrement() {
    if (order.value <= 0) {
    } else {
      order.value--;
    }
  }

  totalkilogramplus() {
    totalkilogram.value++;
  }

  totalkilogrammin() {
    if (totalkilogram.value <= 1) {
    } else {
      totalkilogram.value--;
    }
  }

  shirtplus() {
    shirt.value++;
  }

  shirtmin() {
    if (shirt.value <= 1) {
    } else {
      shirt.value--;
    }
  }

  tshirtplus() {
    tshirt.value++;
  }

  tshirtmin() {
    if (tshirt.value <= 0) {
    } else {
      tshirt.value--;
    }
  }

  underwearplus() {
    underwear.value++;
  }

  underwearmin() {
    if (underwear.value <= 0) {
    } else {
      underwear.value--;
    }
  }

  pantsplus() {
    pants.value++;
  }

  pantsmin() {
    if (pants.value <= 0) {
    } else {
      pants.value--;
    }
  }
}

class OrderController extends GetxController {
  OrderData? orderData;
  TotalData? totalData;
  LayananData? layananData;
  DetailPenerima? detailPenerima;

  void setOrderData(OrderData newOrderData) {
    orderData = newOrderData;
    update();
  }

  void setTotalData(TotalData newTotalData) {
    totalData = newTotalData;
    update();
  }

  void setLayananData(LayananData newLayananData) {
    layananData = newLayananData;
    update();
  }

  void setDetailPenerima(DetailPenerima newDetailPenerima) {
    detailPenerima = newDetailPenerima;
    update();
  }
}
