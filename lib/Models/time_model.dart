class Time {
  final String time;
  final String name;
  final String image;

  const Time({this.time, this.name, this.image});
}

final List<Time> timeTypes = [
  const Time(
    time: "0-2 hour",
    name: "0-2 hour",
    image: "assets/img/spools.jpg",
  ),
  const Time(
    time: "2-5 hours",
    name: "2-5 hours",
    image: "assets/img/Pink_fabric.jpg",
  ),
  const Time(
    time: "5-10 hours",
    name: "5-10 hours",
    image: "assets/img/Sewing_Machine.jpg",
  ),
  const Time(
    time: "10+ hours",
    name: "10+ hours",
    image: "assets/img/Long.jpg",
  ),
];
