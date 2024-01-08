import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sales
  List<Shoe> ShoeShop = [
    Shoe(
        name: 'Nike Air Max',
        price: '2500',
        description: 'Very comfortable',
        imagePath: 'lib/images/Nikeair-max-pulse.png'),
    Shoe(
        name: 'Nike Air Force',
        price: '3500',
        description: 'Very comfortable',
        imagePath: 'lib/images/NikeAirForce.png'),
    Shoe(
        name: 'Nike Cortez',
        price: '2550',
        description: 'Very comfortable',
        imagePath: 'lib/images/Nikecortez.png'),
    Shoe(
        name: 'Nike Waffle',
        price: '5500',
        description: 'Very comfortable',
        imagePath: 'lib/images/Nikewaffle.png'),
  ];

  //list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return ShoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void additemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeitemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
