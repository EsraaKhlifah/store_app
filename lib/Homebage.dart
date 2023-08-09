import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customcart.dart';
import 'git_all_products.dart';
import 'models/product_model.dart';

class Homebage extends StatelessWidget {
  const Homebage({Key? key}) : super(key: key);
  static String id = 'Homebage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<Productmodel>>(
              future: allproductservice().getallproducts(),
              builder: (context, snapshot) {
                if(snapshot.hasData) {

                  List<Productmodel>products=snapshot.data!;
                  return GridView.builder(
                    itemCount: products.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return Customcart(product: products[index],);
                      });
                }
              else{return Center(child: CircularProgressIndicator());}



                },
            )));
  }
}
