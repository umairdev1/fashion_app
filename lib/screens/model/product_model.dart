class Product {
  final String desc, image, name;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
  });
}

List productinfo = [
  Product(
    image: 'assets/casual.jpg',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Casual',
    price: 150,
  ),
  Product(
    image: 'assets/formal_look.jpg',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Formal',
    price: 100,
  ),
  Product(
    image: 'assets/stylish.jpg',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Stylish',
    price: 130,
  ),
  Product(
    image: 'assets/summer.jpg',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Summer',
    price: 150,
  ),
];
