import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {





//list of food menu
  final List<Food> _menu = [
//burgers
    Food(
      name: "Classic Burger",
      description: "A beef patty with melted cheddar, lettuce and tomato",
      imagePath: "lib/images/burgers/Kofte_Hamburger.png",
      price: 10,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Bacon", price: 4),
        Addon(name: "Bbq Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Cheese Burger ",
      description: "A beef patty with melted cheddar, lettuce and tomato",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 12,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Bacon", price: 4),
        Addon(name: "Bbq Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Chicken Burger",
      description: "A Chicken patty with melted cheddar, lettuce and tomato",
      imagePath: "lib/images/burgers/chicken_burger.png",
      price: 8,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Chicken", price: 4),
        Addon(name: "Bbq Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Bbq Burger",
      description:
          "A beef patty with melted cheddar, lettuce, bbq sauce and tomato",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 13,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Bacon", price: 4),
        Addon(name: "Bbq Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Vegan Burger",
      description: "Ultra Vegan Burger",
      imagePath: "lib/images/burgers/vegan_burger.png",
      price: 12,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Bbq Sauce", price: 0.50),
      ],
    ),

//salads

    Food(
      name: "Asian Salad",
      description: "Wonderful delight from Asia",
      imagePath: "lib/images/salads/asian_salad.png",
      price: 10,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
      ],
    ),

    Food(
      name: "Ceaser Salad",
      description: "Delicious salad with chicken",
      imagePath: "lib/images/salads/ceaser_salad.png",
      price: 13,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Extra Chicken", price: 1),
      ],
    ),

    Food(
      name: "Greek Salad",
      description: "Wonderful delight from Greece",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 11,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
      ],
    ),

    Food(
      name: "Gavurdagi Salad",
      description: "New Trend Turkish Salad",
      imagePath: "lib/images/salads/gavurdagi_salad.png",
      price: 9,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
      ],
    ),
    Food(
      name: "SouthWest Salad",
      description: "Wonderful delight from SouthWest",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 10,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
      ],
    ),

//sides

    Food(
      name: "French Fries",
      description: "Fried French Fries",
      imagePath: "lib/images/sides/french_fries_side.png",
      price: 3,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Ranch Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Sweet Potato Fries",
      description: "Fried Sweet Potato Fries",
      imagePath: "lib/images/sides/sweet_potato_fries.png",
      price: 4,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Ranch Sauce", price: 0.50),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Puffy Garlic Breads",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 4,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic Bread", price: 2),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Fried Onion Rings",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 2,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Onion Rings", price: 0.50),
      ],
    ),
    Food(
      name: "Mac and Cheese",
      description: "Classic Mac and Cheese",
      imagePath: "lib/images/sides/mac_and_cheese_side.png",
      price: 5,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
      ],
    ),

//desserts
    Food(
      name: "Baklava",
      description: "Turkish Baklava",
      imagePath: "lib/images/desserts/baklava_dessert.png",
      price: 4,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Baklava", price: 2),
      ],
    ),

    Food(
      name: "Ice Cream",
      description: "Frozen milky dessert",
      imagePath: "lib/images/desserts/ice_cream_dessert.png",
      price: 1,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Milk", price: 0.5),
      ],
    ),
    Food(
      name: "Magnolia",
      description: "Magnolia ",
      imagePath: "lib/images/desserts/mangolia_dessert.png",
      price: 3,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberry", price: 0.75),
      ],
    ),

    Food(
      name: "Milkshake",
      description: "Classic Milkshake ",
      imagePath: "lib/images/desserts/milkshake_dessert.png",
      price: 2,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberry", price: 0.75),
      ],
    ),

    Food(
      name: "Pudding",
      description: "Chocalate Pudding ",
      imagePath: "lib/images/desserts/puding_dessert.png",
      price: 2,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocalate", price: 0.55),
      ],
    ),

//drinks
    Food(
      name: "Cola",
      description: "Classic Cola ",
      imagePath: "lib/images/drinks/cola_drinks.png",
      price: 0.75,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.25),
      ],
    ),
    Food(
      name: "Sprite",
      description: "Classic Lime Sprite ",
      imagePath: "lib/images/drinks/sprite_drinks.png",
      price: 0.75,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.25),
      ],
    ),
    Food(
      name: "Water",
      description: "Iced Water ",
      imagePath: "lib/images/drinks/water_drinks.png",
      price: 0.25,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.25),
      ],
    ),
  ];

  /* 
          GETTERS
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  /* 
          OPERATIONS
  */

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (users can change or update)

  String _deliveryAddress = "Istanbul Kadikoy";


  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the  same food and selected addons...
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already on card , increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise , add a new cart item to the cart
    else {
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

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity >1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
      
    }
    notifyListeners();
  }

  // get total price of the cart
  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of  items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  //update the delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /* 
          HELPERS
  */

  // generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt");
    receipt.writeln();
  

  //format the date to inclue up to seconds only 
  String formattedDate = DateFormat('MM-dd-yyyy HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("---------------------");

  for(final cartItem in _cart){
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} -   ${_formatPrice(cartItem.food.price)}");
    if(cartItem.selectedAddons.isNotEmpty){
      receipt.writeln(" Add - ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln("--------------------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Delivering to:$deliveryAddress");

  return receipt.toString();

  }



  //format double valuE into money

  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }


  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name}, (${_formatPrice(addon.price)})").join(",");
  }
}
