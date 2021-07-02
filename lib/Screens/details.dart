import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Model/Basket.dart';
import 'package:talabat/Model/Product.dart';
import 'package:talabat/components/rounded_button.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  DBHelper dbHelper = DBHelper();
  int count = 1 ;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, dynamic> data = ModalRoute.of(context).settings.arguments;

    Product product = Product(
      img: data['img'],
      pName: data['pName'],
      pDescription: data['pDescription'],
      price: data['price']
    );

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(

          ),
          body: Container(
            child: detailColumn(
              product: product,
              size: size ,
            ),
          ),
        )
    );
  }

  Widget PlsMinButton(IconData icon, Function press) {
    return SizedBox(
      width: 40,
      height: 32,
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

  Widget detailColumn({Size size, Product product}){
    Basket basket = Basket(
      pName: product.pName,
      price: product.price,
      img: product.img,
    );

    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Hero(
              tag: product.img,
              child: Container(
                margin: EdgeInsets.all(10),
                width: 260,
                height: 260,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(product.img),
                    fit: BoxFit.contain,
                  ),
                ),
              )),
        ),

        Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 210,
                      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      // color: Colors.green,
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              child: Text(
                                product.pName,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ))
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        PlsMinButton(Icons.remove,
                        (){
                          if(count == 1) {
                            // delete basket
                            }
                          else{
                              count--;
                          }
                          setState(() {

                          });
                        }),


                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            '$count'.padLeft(2,"0"),
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),


                        PlsMinButton(Icons.add,(){
                          count++;
                          setState(() {

                          });
                        }),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 120,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                       //color: Colors.blue,
                      child: Text('\$ ${product.price}',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                    ),


                    Container(
                      alignment: Alignment.centerLeft,
                      width: 100,
                      height: 50,
                      //color: Colors.green,
                      child: Text('\$ ${(product.price+1.35).toStringAsFixed(2)}',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 90,
                  width: size.width*0.9,
                  // color: Colors.redAccent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                            child: Text(product.pDescription,
                              style: TextStyle(fontSize: 15),
                            )),
                      ],),
                  ),
                ),

                Container(
                  child: RoundedButton(
                      text: 'Add to Cart',
                      btnColor: Colors.deepOrange,
                      textColor: Colors.white,
                      width: 0.7,
                      marginDouble: 10,
                      press: (){
                        // insertion basket
                        basket.quantity = count;
                        dbHelper.insertBasket(basket);
                        Navigator.pop(context);
                        setState(() {

                        });
                      },

                  ),
                ),
              ],
            )
        )
      ],
    );
  }

}
/*
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage('assets/images/img1.jpg'),
                    fit: BoxFit.cover,
                  ),
                )
  */
