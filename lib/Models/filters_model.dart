class Filters {
  final String categories;
  final String name;
  final String image;

  const Filters({this.categories, this.name, this.image});
}

final List<Filters> filterTypes = [
  const Filters(
    categories: "Skill",
    name: "Skill",
    image: "assets/img/Clothing.jpg",
  ),
  const Filters(
    categories: "Luggage",
    name: "Luggage",
    image: "assets/img/Luggage.jpg",
  ),
  const Filters(
    categories: "Material",
    name: "Material",
    image: "assets/img/Home.jpg",
  )
];
