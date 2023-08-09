import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapplecation/models/updateproduct.dart';

import 'models/product_model.dart';

class Customcart extends StatelessWidget {
   Customcart({Key? key,required this.product}) : super(key: key);
Productmodel product;
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProduct.id,arguments: product);
      },
      child: Stack(
        
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 130,
            width: 220,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.2),
                  offset: Offset(10, 10))
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$''${product.price.toString()}',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right:32 ,
top: -60,            child: Image.network(
                product.image,
                height: 100,
            width: 100,
              ))
        ],
      ),
    )
    ;
  }
}
