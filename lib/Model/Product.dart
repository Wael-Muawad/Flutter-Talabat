class Product {
  int id;
  double price;
  String pName, pDescription, img, category;

  Product(
      {this.id,
      this.price,
      this.pName,
      this.pDescription,
      this.img,
      this.category});

  Map<String, dynamic> objectToMap() {
    return {
      'id': this.id,
      'price': this.price,
      'pName': this.pName,
      'pDescription': this.pDescription,
      'img': this.img,
      'category': this.category,
    };
  }



}
