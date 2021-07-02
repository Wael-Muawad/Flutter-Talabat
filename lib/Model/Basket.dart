class Basket {
  int id,quantity;
  double price;
  String img,pName;


  Basket({
    this.id,
    this.quantity,
    this.price,
    this.img,
    this.pName});

  Map<String, dynamic> objectToMap() {
    return {
      'id': this.id,
      'quantity': this.quantity,
      'price': this.price,
      'img': this.img,
      'pName': this.pName,
    };
  }

}
