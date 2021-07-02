class User {
  int id;
  String fname, lname, email, password;

  User({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.password});

  Map <String, dynamic> objectToMap() {
    return {
      'id': this.id,
      'fname': this.fname,
      'lname': this.lname,
      'email': this.email,
      'password': this.password,
    };
  }

}
