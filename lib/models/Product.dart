import 'package:flutter/foundation.dart';

class Product{
  String name;
  String description;
  double price;
  Currency currency;
  String currencySign;

  Product({
    @required this.name,
    this.description,
    @required this.price,
    this.currency=Currency.RMB
  }){
      switch(this.currency){
        case Currency.RMB:
          this.currencySign = "￥";
          break;
        case Currency.dollar:
          this.currencySign = String.fromCharCode(24);
          break;
        default:
          this.currencySign = "";

      }
  }
}

enum Currency {RMB, pound, dollar}
