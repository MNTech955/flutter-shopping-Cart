import 'package:flutter/material.dart';
import 'package:flutter_shopingcart/screen/product_screen.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';



void main()async {
  await PersistentShoppingCart().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ProductsScreen()
    );
  }
}


