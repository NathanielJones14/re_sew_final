class Reduce {
  final String title;
  final String body;
  final String image;

  const Reduce({this.title, this.body, this.image});
}

final List<Reduce> reduceWasteTypes = [
  const Reduce(
    title: "Repair",
    body:
        "Repairing clothing is the ultimate way to extending the life of the item and its materials. Traditional Japanese method Boro has been a key way to repair for thousands of years, and is more fashionable than ever. Repair to craete stories and promote longevity. ",
    image: "assets/img/Boro.jpg",
  ),
  const Reduce(
    title: "Upcycle",
    body:
        "Upcyling old clothing into new objects is a nice way to use unwanted items and gaining a new object as well. This creates a ice story from that old pair of jeans or brings life to that old jumper. ",
    image: "assets/img/Upcycle.jpg",
  ),
  const Reduce(
    title: "Swap",
    body:
        "Swapping clothes at local events or with family and friends is a great way to increase the longevity of clothing and get new items at the same time.",
    image: "assets/img/Swap.jpg",
  ),
  const Reduce(
    title: "Buy Quality",
    body:
        "The better items are made, the longer they’re going to last. High quality clothing have better materials, stronger construction and more thought into the manufacturing, including ethics.",
    image: "assets/img/Quality.jpg",
  ),
];
