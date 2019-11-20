class Categories {
  final String categories;
  final String name;
  final String image;

  const Categories({this.categories, this.name, this.image});
}

List<Categories> categories = [
  const Categories(
    categories: "Clothing",
    name: "Clothing",
    image: "assets/img/Clothing.jpg",
  ),
  const Categories(
    categories: "Luggage",
    name: "Luggage",
    image: "assets/img/Lugagge.jpg",
  ),
  const Categories(
    categories: "Home",
    name: "Home",
    image: "assets/img/Home.jpg",
  ),
  const Categories(
    categories: "Other",
    name: "Other",
    image: "assets/img/Other.jpg",
  )
];
