import 'dart:convert';

import 'package:storeapplecation/models/apimodel.dart';
import 'package:storeapplecation/models/product_model.dart';
import 'package:http/http.dart'as http;

class CatigoriesServices{
 Future<List<Productmodel>>getcatigoriesproducts({required String catigoryname})async{
  List<dynamic>data=await    Api().get(url: 'https://fakestoreapi.com/products/category/$catigoryname');

  List<Productmodel>productlist=[];
  for(int i=0;i<data.length;i++){
   productlist.add(Productmodel.fromjason(data[i]));



  }
  return productlist;




 }




}