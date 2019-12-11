import 'package:meta/meta.dart';

@immutable
class Gallery {
  final String image;

  const Gallery({
    @required this.image,
  });
}

const List<Gallery> gallery = [
  Gallery(
    image: 'assets/img/Clothing.jpg',
  ),
  Gallery(
    image: 'assets/img/Apron/ApronStep7.jpg',
  ),
  Gallery(
    image: 'assets/img/Cushion.png',
  ),
  Gallery(
    image: 'assets/img/WashBag/Washbag1.jpg',
  ),
  Gallery(
    image: 'assets/img/jeans.jpg',
  ),
  Gallery(
    image: "assets/img/JeanRepair/BoroJean.jpg",
  ),
  Gallery(
    image: 'assets/img/denim_apron.png',
  ),
  Gallery(
    image: 'assets/img/Luggage.jpg',
  ),
  Gallery(
    image: 'assets/img/washbag.jpg',
  ),
  Gallery(
    image: 'assets/img/ClothingUpgrade/ClothingUpgrade1.jpg',
  ),
];
