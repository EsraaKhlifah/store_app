import 'dart:convert';

import 'package:storeapplecation/models/apimodel.dart';

import 'models/product_model.dart';
import 'package:http/http.dart'as http;

class allproductservice{

Future<List<Productmodel>>getallproducts()async{
  List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products');

List<Productmodel>productlist=[];
for(int i=0;i<data.length;i++){
  productlist.add(Productmodel.fromjason(data[i]));



}
return productlist;}
}



