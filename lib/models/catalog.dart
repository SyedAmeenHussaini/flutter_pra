class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final product = [
  Item(
      id: 1,
      name: "Iphone 13 pro max",
      desc: "apple iphone 12 pro 128gb ",
      price: 999,
      color: "White",
      image:
          "https://cdn.shopify.com/s/files/1/0568/5942/7015/products/MLL73HN_A_1_d6032f81-1128-4f00-acaf-96a90cc31384.png?v=1632371352")
];
