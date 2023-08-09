import 'package:storeapplecation/models/apimodel.dart';

import 'models/product_model.dart';

class Addproduct{

  Future<Productmodel>addProduct({required String title,required String price,required String descr,required String image,required String catigory})async{

 Map<String,dynamic>data=await  Api().post(url: 'https://fakestoreapi.com/products', body: {
  'title': title,
'price': price,
'description':descr,
'image': image,
'category': catigory}
);

return Productmodel.fromjason(data);


  }




}