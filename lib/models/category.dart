class Category{
  int id;
  String name;
  String image;

  Category({this.id, this.name, this.image});
}

List<Category> categories =[
  new Category(id: 1, name:"سبزیجات", image:"assets/images/sabzijat.png"),
  new Category(id: 2, name:"عرقیجات", image:"assets/images/araghijat.png"),
  new Category(id: 3, name:"دمنوش‌ها", image:"assets/images/damnoush.png"),
  new Category(id: 4, name:"فرنگیجات", image:"assets/images/farangijat.png"),
  new Category(id: 5, name:"عسل و شیره", image:"assets/images/honey.png"),
  new Category(id: 6, name:"ادویه‌ها", image:"assets/images/adviye.png"),
  new Category(id: 7, name:"ترشیجات", image:"assets/images/torshi.png"),
  new Category(id: 8, name:"غذا و کیک", image:"assets/images/food.png"),
];