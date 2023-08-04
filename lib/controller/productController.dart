import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modals/product_modal.dart';

class ProductController extends ChangeNotifier {
  List<ProductModal> allProducts = [];

  ProductController() {
    loadProducts();
  }

  loadProducts() async {
    String res = await rootBundle.loadString('assets/json/products.json');
    List allData = jsonDecode(res);

    allProducts = allData.map((e) => ProductModal.fromMap(data: e)).toList();
    notifyListeners();
  }
}
