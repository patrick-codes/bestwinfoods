class Food {
  String category;
  String location;
  String imgUrl;

  Food({
    required this.category,
    required this.location,
    required this.imgUrl,
  });

  List<Food> foods = [
    Food(
        category: 'Chicken Biryani',
        location: 'Dansoman',
        imgUrl: 'assets/images/food1.png'),
    Food(
        category: 'Suace Tonkasu',
        location: 'Weija',
        imgUrl: 'assets/images/food2.png'),
    Food(
        category: 'Fried Rice',
        location: 'Odokor',
        imgUrl: 'assets/images/food3.png'),
    Food(
        category: 'Banku with Sauce',
        location: 'Tesano',
        imgUrl: 'assets/images/food4.png'),
    Food(
        category: 'Potato Chips',
        location: 'Kasoa',
        imgUrl: 'assets/images/food5.png'),
    Food(
        category: 'Spring Rice',
        location: 'Fadama',
        imgUrl: 'assets/images/offer1.png'),
  ];
}
