import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Screens/Cart.dart';
import 'package:talabat/Screens/Login.dart';
import 'package:talabat/Screens/details.dart';
import 'package:talabat/Screens/home_page.dart';
import 'package:talabat/Screens/intro_page.dart';



class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> BasketData = [];
  Widget ActivePage = HomePage();
  int currentindex = 0;
  var txtstyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.deepOrange),
      ),
      body: ActivePage,
      bottomNavigationBar: BottomNavigationBar
        (
        currentIndex: currentindex,
        backgroundColor: Color(0xFFF6E6DF),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.deepOrange,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.deepOrange
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(Icons.shopping_cart),
                label: 'Cart',
                backgroundColor: Colors.blue
            ),
          ],
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Color(0xFFF6E6DF),
          child:
          ListView(
            children: [
              Container(
                height: 150,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          //backgroundImage: AssetImage('assets/images/image4.jpg'),
                          backgroundColor: Colors.blueGrey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Guest',
                              style: txtstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage:AssetImage('assets/images/flag.png'),
                                  radius: 12,
                                  //backgroundColor: Colors.blue,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Jordan'),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.settings_outlined,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              OrangeDevider(),

              ListTileDrawer(Icons.home_outlined, 'Home', () {
                setState(() {
                  ActivePage = HomePage();
                  Navigator.pop(context);
                });
              },),
              OrangeDevider(),

              ListTileDrawer(Icons.person_outline, 'Profile', () {},),
              OrangeDevider(),

              ListTileDrawer(Icons.shopping_cart_outlined, 'Cart',
                    () {

                setState(() {
                  ActivePage = CartPage();
                  Navigator.pop(context);
                });
              },),
              OrangeDevider(),

              ListTileDrawer(Icons.logout, 'Logout', () {
                setState(() {
                  ActivePage = IntroPage();
                  Navigator.pop(context);
                });
              },),
              OrangeDevider(),
            ],
          ),
        ),

      ),
    );
  }

  Widget ListTileDrawer(IconData icon, String title, Function ontap){
    return ListTile(
      leading: Icon(icon,color: Colors.deepOrange,),
      title: Text(title,),
      onTap: ontap,
    );
  }

  Divider OrangeDevider(){
    return Divider(height: 10,color: Colors.deepOrange,thickness: 2,);
  }

}

/**/