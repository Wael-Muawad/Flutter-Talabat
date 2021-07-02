import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Model/User.dart';
import 'package:talabat/components/rounded_button.dart';
import 'package:talabat/components/rounded_input_field.dart';
import 'package:talabat/components/rounded_password_fielld.dart';
import 'package:video_player/video_player.dart';
import '../OrangeBoard.dart';
import '../Video_Player_Widget.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextStyle btnStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  List<Map<String, dynamic>> userData = [];
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  DBHelper dbHelper = DBHelper();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    VideoPlayerController controller =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Stack(
          children: [
            Hero(
                tag: 'video',
                child: Container(
                    //color: Colors.deepOrange,
                    child: VideoPlayerWidget(
                        controller: controller,
                        Ratio: controller.value.aspectRatio))),
            Positioned(
                bottom: 0,
                child: Hero(
                  tag: 'orangeCard',
                  child: OrangeBoard(
                    height: 555,
                    width: 360,
                    topRight: 15,
                    topLeft: 15,
                    opacity: 0.9,
                    color: Colors.white,
                    widget: Container(
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(9),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    children: [
                                      Expanded(
                                          child: Column(
                                        children: [
                                          RoundedInputField(
                                            hintText: 'First Name',
                                            keyboardType: TextInputType.text,
                                            icon:
                                                Icons.drive_file_rename_outline,
                                            controlar: fNameController,
                                            onChanged: (value) {},
                                          ),
                                          RoundedInputField(
                                            hintText: 'Last Name',
                                            keyboardType: TextInputType.text,
                                            icon:
                                                Icons.drive_file_rename_outline,
                                            controlar: lNameController,
                                            onChanged: (value) {},
                                          ),
                                          RoundedInputField(
                                            hintText: 'Email Address',
                                            keyboardType:
                                                TextInputType.text,
                                            icon: Icons.person_outline,
                                            controlar: emailController,
                                            onChanged: (value) {},
                                          ),
                                          RoundedPasswordField(
                                            onChanged: (value) {},
                                            controlar:passwordController,
                                          ),
                                          ChickBoxOffers(),
                                          RoundedButton(
                                              text: 'Create account',
                                              textColor: Colors.white,
                                              btnColor: Colors.deepOrange,
                                              width: 0.7,
                                              marginDouble: 0,
                                              press: () async {
                                                print('fName9999999999999999999 ${fNameController.text}');
                                                print('lName9999999999999999999 ${lNameController.text}');
                                                print('email9999999999999999999 ${emailController.text}');
                                                print('password9999999999999999999 ${passwordController.text}');
                                                if(fNameController.text.isNotEmpty &&
                                                lNameController.text.isNotEmpty &&
                                                emailController.text.isNotEmpty &&
                                                passwordController.text.isNotEmpty)
                                                {
                                                  User user = User(
                                                    fname: fNameController.text,
                                                    lname: lNameController.text,
                                                    email: emailController.text,
                                                    password:passwordController.text,
                                                  );
                                                  dbHelper.insertUser(user);
                                                  userData = await dbHelper.getAllUsers();
                                                  print('User is $user LENGTH IS ${userData.length}');
                                                  Navigator.pushReplacementNamed(context, 'login',arguments: controller);
                                                }

                                                print('User is LENGTH IS ${userData.length}');
                                              }),



                                          Already_Have_An_Account(
                                                  (){
                                                Navigator.of(context)
                                                    .pushReplacementNamed(
                                                    'login',arguments: controller);
                                              },
                                              'Already have an Account? Sign in'),
                                          TermsOfUseText(),
                                        ],
                                      ))
                                    ],
                                  )),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        )));
  }

  Widget TermsOfUseText() {
    return Container(
        padding: EdgeInsets.all(10),
        child: RichText(
          text: TextSpan(style: TextStyle(color: Colors.grey), children: [
            TextSpan(
                text: 'By creating an account '
                    'you agree to the '),
            TextSpan(
                text: 'privacy policy ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepOrange)),
            TextSpan(text: 'and to the '),
            TextSpan(
              text: 'terms of use.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.deepOrange),
            ),
          ]),
        ));
  }

  Widget ChickBoxOffers() {
    return Material(
      child: CheckboxListTile(
        title: Text(
          'Yes, I want to receive offers and discounts ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        value: isChecked,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        },
        checkColor: Colors.white,
        activeColor: Colors.deepOrange,
      ),
    );
  }

  Widget Already_Have_An_Account(Function press, String title) {
    return TextButton(
        onPressed: press,
        child: Text(title,
          style:TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
        )
    );
  }
}
