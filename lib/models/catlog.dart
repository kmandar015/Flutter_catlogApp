class Catlog {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final num price;
  final String image;
  final String color;

  Item(
      {required this.color,
      required this.desc,
      required this.id,
      required this.image,
      required this.name,
      required this.price});
}
