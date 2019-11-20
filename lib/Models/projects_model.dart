class Project {
  final String id;
  final String name;
  final String difficulty;
  final String material;
  final String time;
  final String image;
  final String description;
  final String category;

  const Project(
      {this.id,
      this.name,
      this.difficulty,
      this.material,
      this.time,
      this.image,
      this.description,
      this.category});
}

List<Project> projects = [
  const Project(
    id: "1",
    name: "Work Apron",
    difficulty: "Hard",
    material: "Denim",
    time: "5-10 hours",
    description:
        "This apron reuses a single pair of jeans in order to make a long lasting and highly useful apron.",
    image: "assets/img/denim_apron.png",
    category: "Clothing",
  ),
  const Project(
    id: "2",
    name: "Wash Bag",
    difficulty: "Medium",
    material: "Denim",
    time: "2-5 hours",
    description:
        "A classic and timeless wash bag for travelling or storing bathroom necessities.",
    image: "assets/img/denim_apron.png",
    category: "Luggage",
  ),
  const Project(
    id: "3",
    name: "Cushion",
    difficulty: "Medium",
    material: "Denim",
    time: "2-5 hours",
    description:
        "A beautiful way to re-use scrap fabric and make a statement piece for the home.",
    image: "assets/img/denim_apron.png",
    category: "Home",
  ),
  const Project(
    id: "4",
    name: "Work Apron",
    difficulty: "Hard",
    material: "Denim",
    time: "5-10 hours",
    description:
        "This apron reuses a single pair of jeans in order to make a long lasting and highly useful apron.",
    image: "assets/img/denim_apron.png",
    category: "Other",
  ),
];
