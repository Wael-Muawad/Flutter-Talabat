import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Model/Basket.dart';
import 'package:talabat/components/rounded_button.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  DBHelper dbHelper = DBHelper();
  Basket basket;
  double total = 0,p =0;
  int q=0;
  List<Map<String, dynamic>> BasketData = [];


  @override
  void initState(){
    super.initState();


    Future <void> retrieveBasket() async{
      BasketData = await dbHelper.getAllBasket();
      print(BasketData);
      total = 0;
      BasketData.forEach((element) {
        total = total + (element['price'] * element['quantity']);
        setState(() {

        });
      }
      );
    }

    retrieveBasket();
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text(
              'Basket',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              width: size.width,
              height: size.height - 300,
              //color: Colors.pinkAccent,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 385,
                    //color: Colors.deepPurpleAccent,
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Expanded(
                            child: ListView.builder(itemCount: BasketData.length,itemBuilder: (context, index) {

                              return CartCard(
                                  basket = Basket(
                                    id: BasketData[index]['id'],
                                    pName: BasketData[index]['pName'],
                                    price: BasketData[index]['price'],
                                    img: BasketData[index]['img'],
                                    quantity: BasketData[index]['quantity'],
                                  )
                              );
                              /*
                            CartCard(),
                            CartCard(),
                            CartCard(),
                            CartCard(),
                            CartCard(),
                             */
                            },))
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: size.width,
                        //height: 150,
                        color: Colors.white,
                        child: ExpansionTile(
                          expandedAlignment: Alignment.bottomCenter,
                          title: Text('More Details'),
                          //leading: Icon(Icons.arrow_drop_down_circle_outlined),
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Divider(height: 10,color: Colors.deepOrange,thickness: 2,),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Subtotal',style: TextStyle(
                                          fontWeight: FontWeight.bold),),
                                      Text('\$ ${(total).toStringAsFixed(3)}',style: TextStyle(
                                          fontWeight: FontWeight.bold),)],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Delivery Fee',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),),
                                      Container(
                                          child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                                children: [
                                                  TextSpan(
                                                    text: '\$ 4.990',
                                                    style: TextStyle(
                                                        decoration: TextDecoration.lineThrough
                                                    ),
                                                  ),
                                                  TextSpan(
                                                      text: '  FREE',
                                                      style: TextStyle(
                                                          color: Colors.red
                                                      )
                                                  )
                                                ]),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Offer Discount',style: TextStyle(
                                          fontWeight: FontWeight.bold),),
                                      Text('\$ 0.000',style: TextStyle(
                                          fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount', style: TextStyle(fontSize: 20)),
                  Text(
                    '\$ ${(total).toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            RoundedButton(
                text: 'Checkout',
                btnColor: Colors.deepOrange,
                textColor: Colors.white,
                width: 0.8,
                marginDouble: 10,
                press: () {
                  DisplayMyDialog(
                    MyTitle: Text('Are You Sure About Checkout'),
                    MyContent: Text('keep in mind that all basket will be removed from DB'),
                    Pos: 'YES',
                    Nig: 'NO',
                    context: context,
                  );
                  setState(() {

                  });
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget PlsMinButton(IconData icon, Function press) {
    return SizedBox(
      width: 37,
      height: 29,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            side: BorderSide(color: Colors.deepOrange),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
        child: Icon(
          icon,
          color: Colors.deepOrange,
        ),
        onPressed: press,
      ),
    );
  }

  Widget CartCard(Basket basket) {
    return Card(
      shadowColor: Colors.deepOrange,
      elevation: 4,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            //color: Colors.deepOrange,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: AssetImage(basket.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            // width: 100,
            height: 100,
            // color: Colors.green,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 110,
                      //color: Colors.green,
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              child: Text(
                            basket.pName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ))
                        ],
                      ),
                    ),
                    
                    PlsMinButton(Icons.remove, 
                         () async {
                          if(basket.quantity == 1) {
                            // delete basket
                            dbHelper.deleteBasket(basket.id);
                            BasketData = await dbHelper.getAllBasket();
                          }
                          else{
                            //update basket
                            print('Basket before update ${basket.quantity}');
                            basket.quantity = basket.quantity-1;
                            dbHelper.updateBasket(basket);
                            print('Basket After update ${basket.quantity}');
                            BasketData = await dbHelper.getAllBasket();
                          }

                          BasketData = await dbHelper.getAllBasket();
                          total = 0;
                          BasketData.forEach((element) {
                            total = total + (element['price'] * element['quantity']);
                          });
                          setState(() {

                          });
                        }
                    ),
                    
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        '${basket.quantity}'.padLeft(2,"0"),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    
                    PlsMinButton(Icons.add,
                    () async {
                      //update basket
                      basket.quantity = basket.quantity + 1;
                      dbHelper.updateBasket(basket);
                      BasketData = await dbHelper.getAllBasket();
                      total = 0;
                      BasketData.forEach((element) {
                        total = total + (element['price'] * element['quantity']);
                        setState(() {

                        });
                      }
                      );
                    })],
                ),
                Text(
                  '\$ ${(basket.price * basket.quantity).toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void DisplayMyDialog(
      {BuildContext context,
        Widget MyTitle,
        Widget MyContent,
        String Pos,
        String Nig})
  {
    var dialog = AlertDialog(
      title: MyTitle,
      content: MyContent,
      actions: [
        ElevatedButton(
          child: Text(Pos),
          onPressed: () async {
            BasketData.forEach((element) async { await dbHelper.deleteBasket(element['id']); });
            Navigator.of(context).pop();
            setState(() {

            });
          },
        ),
        ElevatedButton(
          child: Text(Nig),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {

            });
          },
        )
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return dialog;
      },
    );
  }

}

/**/
