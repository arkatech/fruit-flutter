class Product{
  int id;
  String title;
  String image;
  int price;
  int discount;
  int discountPercent;
  bool hasSpecial;
  bool hasDiscount;
  int specialColor;

  Product({this.id, this.title, this.image, this.price, this.discount, this.discountPercent, this.hasDiscount, this.hasSpecial, this.specialColor});
}

List<Product> products = [
  new Product(id: 1, title: "کیوی تازه - 175 گرم", image: "assets/images/kivi.png", price: 22000, discount: 12000, discountPercent: 33, hasSpecial: true, hasDiscount: true, specialColor: 0xFFE2F0CB),
  new Product(id: 2, title: "پرتقال تامسون درجه یک - 1 کیلوگرم", image: "assets/images/portaghal.png", price: 22000, discountPercent: 33, discount: 18000, hasSpecial: true, hasDiscount: true, specialColor: 0xFFFFDAC1),
  new Product(id: 3, title: "توتفرنگی نوبر - 400 گرم", image: "assets/images/toot.png", price: 22000, discount: 18000 , discountPercent: 33, hasSpecial: true, hasDiscount: true, specialColor: 0xFFFCBEBA),
];