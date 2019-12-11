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
    image: "assets/img/Medium.jpg",
  ),
  const Filters(
    categories: "Time",
    name: "Time",
    image: "assets/img/Pink_fabric.jpg",
  ),
  const Filters(
    categories: "Material",
    name: "Material",
    image: "assets/img/Denim.jpg",
  )
];
