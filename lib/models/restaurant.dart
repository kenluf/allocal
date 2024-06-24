import 'package:allocal/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    //nasi goreng
    Food(
      name: "NasGor Mas Dzikri",
      description:
        "Nasi goreng terdiri dari nasi yang digoreng dengan bawang putih, bawang merah, kecap manis, telur, dan seringkali ditambah dengan sayuran, daging, atau udang",
      imagePath: "lib/images/nasgor/nasi_goreng_mas_dzikri.jpeg",
      price: 20000,
      category: FoodCategory.nasgor,
      availableAddons: [
        Addon(name: "Sosis", price: 5000),
        Addon(name: "Kerupuk", price: 1000),
        Addon(name: "Ati ampla", price: 5000),
      ],
    ),
    
    Food(
      name: "Nasi Goreng Mas Agus",
      description:
        "Nasi goreng terdiri dari nasi yang digoreng dengan bawang putih, bawang merah, kecap manis, telur, dan seringkali ditambah dengan sayuran, daging, atau udang",
      imagePath: "lib/images/nasgor/nasgor1.jpg",
      price: 20000,
      category: FoodCategory.nasgor,
      availableAddons: [
        Addon(name: "Sosis", price: 5000),
        Addon(name: "Kerupuk", price: 1000),
        Addon(name: "Ati ampla", price: 5000),
      ],
    ),
    /*Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/nasgor/xxx",
      price: 0.99,
      category: FoodCategory.nasgor,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),*/

    //bakso
    Food(
      name: "Bakso Endul",
      description:
        "Bakso terdiri dari bola-bola daging yang terbuat dari campuran daging sapi giling, tepung tapioka, bawang putih, merica, garam, dan air, disajikan dengan kuah kaldu sapi, mie, sayuran, dan pelengkap seperti tahu, pangsit, dan telur.",
      imagePath: "lib/images/bakso/bakso_endul.jpg",
      price: 15000,
      category: FoodCategory.bakso,
      availableAddons: [
        Addon(name: "Bakso Urat", price: 5000),
        Addon(name: "Kerupuk", price: 1000),
        Addon(name: "Tahu", price: 2000),
      ],
    ),
    /*Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/bakso/xxx",
      price: 0.99,
      category: FoodCategory.bakso,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),
    Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/bakso/xxx",
      price: 0.99,
      category: FoodCategory.bakso,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),*/

    //bakmie
    Food(
      name: "Bakmie Kelingan",
      description:
        "Bakmi terdiri dari mie yang direbus dan disajikan dengan campuran bumbu seperti bawang putih, kecap manis, minyak wijen, serta ditambahkan dengan potongan daging ayam atau sapi, sayuran, dan taburan bawang goreng.",
      imagePath: "lib/images/bakmie/bakmie_kelingan.jpg",
      price: 20000,
      category: FoodCategory.bakmie,
      availableAddons: [
        Addon(name: "Pangsit Goreng", price: 5000),
        Addon(name: "Pangsit Rebus", price: 5000),
        Addon(name: "Udang Keju", price: 5000),
      ],
    ),
    /*Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/bakmie/xxx",
      price: 0.99,
      category: FoodCategory.bakmie,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),
    Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/bakmie/xxx",
      price: 0.99,
      category: FoodCategory.bakmie,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),*/

    //soto
    Food(
      name: "Soto Betawi Globe H.Oji",
      description:
        "Soto Betawi adalah hidangan sup khas Betawi dari Jakarta, Indonesia. Sup ini menggunakan santan atau susu sebagai kuahnya, memberikan rasa yang kaya dan gurih.",      
      imagePath: "lib/images/soto/soto_betawi_globe_hoji.jpg",
      price: 20000,
      category: FoodCategory.soto,
      availableAddons: [
        Addon(name: "Emping", price: 2000),
        Addon(name: "Nasi", price: 5000),
        Addon(name: "Telor Rebus", price: 5000),
      ],
    ),

    Food(
      name: "Soto Bang Edi",
      description:
        "Soto Betawi adalah hidangan sup khas Betawi dari Jakarta, Indonesia. Sup ini menggunakan santan atau susu sebagai kuahnya, memberikan rasa yang kaya dan gurih.",      
      imagePath: "lib/images/soto/soto1.jpg",
      price: 20000,
      category: FoodCategory.soto,
      availableAddons: [
        Addon(name: "Emping", price: 2000),
        Addon(name: "Nasi", price: 5000),
        Addon(name: "Telor Rebus", price: 5000),
      ],
    ),

    /*Food(
      name: "xxx",
      description:
        "penjelasan",
      imagePath: "lib/images/soto/xxx",
      price: 0.99,
      category: FoodCategory.soto,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),*/
    

    //dessert
    Food(
      name: "Serabi Notosuman",
      description:
        "Serabi Notosuman memiliki rasa yang unik dan khas. Gula merah yang digunakan memberikan rasa manis yang lezat dengan sedikit nuansa karamel. ",      
      imagePath: "lib/images/dessert/serabi_notosuman.jpg",
      price: 10000,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "Keju", price: 5000),
        Addon(name: "Coklat", price: 5000),
        Addon(name: "Durian", price: 5000),
      ],
    ),
    /*Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/dessert/xxx",
      price: 0.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),
    Food(
      name: "xxx",
      description:
        "penjelasan",
      //imagePath: "lib/images/dessert/xxx",
      price: 0.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "add1", price: 0.99),
        Addon(name: "add2", price: 1.99),
        Addon(name: "add3", price: 2.99),
      ],
    ),*/
  ];

  //GETTERS
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //OPERATIONS
  
  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons){
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item){
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
        ListEquality().equals(item.selectedAddons, selectedAddons);

        return isSameFood && isSameAddons;
    });

    //if item already exists, increase its quantity
    if (cartItem != null){
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else{
      _cart.add(
        CartItem(
          food: food, 
          selectedAddons: selectedAddons,
        ),  
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1){
      if (_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }




  //HELPERS

  // generate a receipt
  String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  // format the date to include up to seconds only
  String formattedDate = 
    DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  // Add formattedDate to the receipt
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("--------------");

  for (final cartItem in _cart) {
    receipt.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
    );
  
    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln(
        "    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln("--------------");
  receipt.writeln();
  receipt.writeln("Total Items : ${getTotalItemCount()}");
  receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

  return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }

}
