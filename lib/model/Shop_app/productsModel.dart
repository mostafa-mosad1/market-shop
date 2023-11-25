
import 'Rating.dart';

class productsModel{
  dynamic id;
  String title;
  dynamic price;
  String description;
  String category;
  String image;
  RatingModel rating;

  productsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating

  });

 factory productsModel.formJson(dynamic Json){
    return productsModel(
        id:Json['id'],
        title:Json['title'],
        price:Json['price'],
    description:Json['description'],
    category:Json['category'],
    image:Json["image"] ,
    rating: RatingModel.fromJson(Json["rating"]),

    );

  }

}
//
// class RatingModel {
//   double rate;
//   double count;
//   RatingModel({required this.rate,
//     required this.count});
//   factory RatingModel.formJson(Json){
//     return RatingModel(
//       rate:Json["rating"],
//       count:Json["rating"]
//     );
//   }}