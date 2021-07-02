import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:talabat/Model/Basket.dart';
import 'package:talabat/Model/Product.dart';
import 'package:talabat/Model/User.dart';

class DBHelper {


  static DBHelper _helper;
  Database _database;

  DBHelper._getInstance();
  factory DBHelper() {
    if (_helper == null)
      _helper = DBHelper._getInstance();
    return _helper;
  }

  String dbName = 'talabat.db';

  String tableNameForUser = 'user';
  String tableNameForProduct= 'product';
  String tableNameForBasket= 'basket';


  String dbCreateTableUser =
      'CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT, fname TEXT, lname TEXT, email TEXT, password TEXT)';
  //String fname, lname, email, password;
  String dbCreateTableProduct =
      'CREATE TABLE product(id INTEGER PRIMARY KEY AUTOINCREMENT, price REAL, pName TEXT, pDescription TEXT, img TEXT,  category TEXT)';
  String dbCreateTableBasket =
      'CREATE TABLE basket(id INTEGER PRIMARY KEY AUTOINCREMENT, quantity INTEGER, price REAL, img TEXT, pName TEXT)';
  /*
  return {
      'id': this.id,
      'quantity': this.quantity,
      'price': this.price,
      'img': this.img,
      'pName': this.pName,
    };
   */

  initializeDB() async {
    // to avoid conflict in case of multiple versions
    WidgetsFlutterBinding.ensureInitialized();

    //create a new DB if not already created or use it if exist
    //must be final because once it has value it could never change
    final Future <Database> database = openDatabase(
      join(await getDatabasesPath(), dbName,), // path
      version: 1,
      onCreate: (db, version) {
        db.execute(dbCreateTableUser);
        db.execute(dbCreateTableProduct);
        db.execute(dbCreateTableBasket);
      }
    );

    _database = await database;
  }

  //////////////////////////////////////////////////////
  Future <void> insertUser(User u) async {
    if (_database == null)
      await initializeDB();

    await _database.insert(tableNameForUser, u.objectToMap());
  }
  Future <List <Map <String, dynamic> > > emailCheck(String email, String pass) async {
    if (_database == null)
      await initializeDB();

    // select * from student where id=student_id
    return await _database.query(tableNameForUser,
        where: 'email=? and password=?',whereArgs: [email,pass]);
  }
  Future <List <Map <String, dynamic> > > getAllUsers() async {
    if (_database == null)
      await initializeDB();

    // select * from student where id=student_id
    return await _database.query(tableNameForUser);
  }
  //////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  Future <void> insertProduct(Product p) async {
    if (_database == null)
      await initializeDB();

    await _database.insert(tableNameForProduct, p.objectToMap());
  }
  Future <List <Map <String, dynamic> > > getProductByCategory(String category) async {
    if (_database == null)
      await initializeDB();

    // select * from student where id=student_id
    return await _database.query(tableNameForProduct, where: 'category= ?',whereArgs: [category]);
  }
  Future <List <Map <String, dynamic> > > getAllProduct() async {
    if (_database == null)
      await initializeDB();

    // select * from student where id=student_id
    return await _database.query(tableNameForProduct);
  }
  //////////////////////////////////////////////////////////////////



  //////////////////////////////////////////////////////////////////
  Future <void> insertBasket(Basket basket) async {
    if (_database == null)
      await initializeDB();

    await _database.insert(tableNameForBasket, basket.objectToMap());
  }
  Future <List <Map <String, dynamic> > > getAllBasket() async {
    if (_database == null)
      await initializeDB();

    // select * from student where id=student_id
    return await _database.query(tableNameForBasket);
  }
  Future <void> updateBasket(Basket basket) async {
    if (_database == null)
      await initializeDB();

    await _database.update(tableNameForBasket, basket.objectToMap(),
        where: 'id=${basket.id}');
  }
  Future <void> deleteBasket(int id) async {
    if (_database == null)
      await initializeDB();

    await _database.delete(tableNameForBasket, where: 'id=$id');
  }
  //////////////////////////////////////////////////////////////////

}