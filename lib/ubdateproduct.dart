import 'models/apimodel.dart';
import 'models/product_model.dart';

class Updateproduct {
  Future<Productmodel> updateProduct(
      {required String title,
      required String price,
      required String descr,
      required String image,
        required int id,
      required String catigory}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': descr,
      'image': image,
      'category': catigory
    });

    return Productmodel.fromjason(data);
  }
}
