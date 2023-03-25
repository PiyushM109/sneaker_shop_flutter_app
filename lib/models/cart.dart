import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'ZOOM FREAK',
      price: '236',
      description: 'The forward-thinking design shoe of latest design',
      imagePath: 'lib/images/shoe_1.png',
    ),
    Shoe(
      name: 'AIR JORDAN',
      price: '360',
      description:
          'You ve got the hops and the speed—lace up in shoes that enhance what you bring to the court',
      imagePath: 'lib/images/shoe_2.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '246',
      description:
          'You ve got the hops and the speed—lace up in shoes that enhance what you bring to the court',
      imagePath: 'lib/images/shoe_4.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      description:
          'You ve got the hops and the speed—lace up in shoes that enhance what you bring to the court',
      imagePath: 'lib/images/Shoe_2.png',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
