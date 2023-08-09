import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapplecation/models/product_model.dart';

import '../CustomTextfeild.dart';
import '../Custombttomn.dart';
import '../ubdateproduct.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


class UpdateProduct extends StatefulWidget {
   UpdateProduct({Key? key}) : super(key: key);
  static String id = 'updateproduct';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String ?productname,description,image;

  String ?price;

  bool isloding=false;

  @override
  Widget build(BuildContext context) {
    Productmodel product =
    ModalRoute.of(context)!.settings.arguments as Productmodel;
    return ModalProgressHUD(
      inAsyncCall: isloding,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100,),
                CustomTextField(
                  onChanged: (data){
                    productname=data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data){
                    description=data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (data){
                    price=data;
                  },
                  hintText: 'Price',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data){
                    image=data;
                  },

                  hintText: 'image',
                ),
                SizedBox(height: 50,),
                CustomButon(text: 'Update',
                onTap: (
                    )async{
                  isloding=true;
                  setState(() {});

                  try {
                  await  updateProduct(product);
                    print('sucsses');
                  } catch (e) {
                    print(e.toString());
                  }
                  isloding=false;
                  setState(() {});

                  },)

              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> updateProduct(Productmodel product)async{

   await Updateproduct().updateProduct(
     id: product.id,
        title: productname == null ? product.title : productname!,
        price: price == null ? product.price.toString() : price!,
        descr: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        catigory: product.category);


  }
}
