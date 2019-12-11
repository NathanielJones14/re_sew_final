class Difficulty {
  final String difficulty;
  final String name;
  final String image;

  const Difficulty({this.difficulty, this.name, this.image});
}

final List<Difficulty> difficultyTypes = [
  const Difficulty(
    difficulty: "Just getting started",
    name: "Just getting started",
    image: "assets/img/HandSew.jpg",
  ),
  const Difficulty(
    difficulty: "Learning quickly",
    name: "Learning quickly",
    image: "assets/img/Master.jpg",
  ),
  const Difficulty(
    difficulty: "Let’s get technical",
    name: "Let’s get technical",
    image: "assets/img/Medium.jpg",
  ),
  const Difficulty(
    difficulty: "Mastering the art",
    name: "Mastering the art",
    image: "assets/img/Sewing_dark.jpg",
  ),
];
