class Productmodel {
  final dynamic id;

  final String title;

  final dynamic price;

  final String description;

  final String image;
  final ratingmodel ?raiting;
  final String category;



  Productmodel(
      {required this.id,
      required this.title,
        required this.category,
      required this.price,
      required this.image,
      required this.description,
      required this.raiting});
  factory Productmodel.fromjason(jsondata) {
    return Productmodel(
        id: jsondata['id'],
        title: jsondata['title'],
        category: jsondata['category'],
        price: jsondata['price'],
        image: jsondata['image'],
        description: jsondata['description'],
        raiting: jsondata['rating']==null
            ?null
        :
        ratingmodel.fromjason(jsondata['rating']));
  }
}

class ratingmodel {
  final dynamic rate;
  final int count;

  ratingmodel({required this.rate, required this.count});
  factory ratingmodel.fromjason(jsondata) {
    return ratingmodel(rate: jsondata['rate'], count: jsondata['count']);
  }
}
