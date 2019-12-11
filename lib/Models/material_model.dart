class Materials {
  final String material;
  final String name;
  final String image;

  const Materials({this.material, this.name, this.image});
}

final List<Materials> materialTypes = [
  const Materials(
    material: "Cotton",
    name: "Cotton",
    image: "assets/img/Cotton.png",
  ),
  const Materials(
    material: "Denim",
    name: "Denim",
    image: "assets/img/Denim.jpg",
  ),
  const Materials(
    material: "Synthetic",
    name: "Synthetic",
    image: "assets/img/Polyester.jpg",
  ),
  const Materials(
    material: "Wool",
    name: "Wool",
    image: "assets/img/Wool.jpg",
  ),
];
