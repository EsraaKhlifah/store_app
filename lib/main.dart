import 'package:flutter/material.dart';
import 'package:storeapplecation/Homebage.dart';

import 'git_all_products.dart';
import 'models/updateproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {


        Homebage.id:(context)=>Homebage(),
        UpdateProduct.id:(context)=>UpdateProduct()
      },
      initialRoute:Homebage.id ,
    );
  }
}


