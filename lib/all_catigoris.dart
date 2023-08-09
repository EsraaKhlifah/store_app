import 'dart:convert';

import 'package:http/http.dart'as http;

import 'models/apimodel.dart';
class allcatioriesservices{
Future<List<dynamic>>getcatigorisservice()async{


  List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products/categories');


  return data;
}





}