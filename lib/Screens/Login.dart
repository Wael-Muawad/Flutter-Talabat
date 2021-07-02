import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Video_Player_Widget.dart';
import 'package:talabat/components/rounded_button.dart';
import 'package:talabat/components/rounded_input_field.dart';
import 'package:talabat/components/rounded_password_fielld.dart';
import 'package:video_player/video_player.dart';
import '../OrangeBoard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  DBHelper dbHelper = DBHelper();
  List<Map<String, dynamic>> userData = [];
  TextStyle btnStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                      height: 540,
                      width: 360,
                      topRight: 15,
                      topLeft: 15,
                      opacity: 0.9,
                      color: Colors.white,
                      widget: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  RoundedInputField(
                                    hintText: 'Email Address',
                                    keyboardType: TextInputType.emailAddress,
                                    icon: Icons.person_outline,
                                    onChanged: (value) {},
                                    controlar: emailController,
                                  ),

                                  RoundedPasswordField(
                                    onChanged: (value) {},
                                    controlar: passwordController,
                                  ),

                                  RoundedButton(
                                      text: 'Login',
                                      textColor: Colors.white,
                                      btnColor: Colors.deepOrange,
                                      width: 0.7,
                                      marginDouble: 10,
                                      press: () async {

                                        if(emailController.text.isNotEmpty &&
                                        passwordController.text.isNotEmpty)
                                        {
                                          userData = await dbHelper.emailCheck(
                                              emailController.text,
                                              passwordController.text);

                                          print('777777777777 ${emailController.text}');
                                          print('777777777777 ${passwordController.text}');
                                          print('Length IS ${userData.length}');

                                          if(userData.isNotEmpty){
                                            print('666666666666666 ${passwordController.text}');
                                            Navigator.of(context)
                                                .pushReplacementNamed(
                                                'drawer',arguments: controller);
                                            }
                                          }



                                          }),

                                  Already_Have_An_Account(
                                      (){
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                            'signup',arguments: controller);
                                      },
                                      'Don\'t have an Account? Sign Up'
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )))
          ],
        ),
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
          onPressed: () {
            print('dgdgf');
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text(Nig),
          onPressed: () {
            print('dgdgf');
            Navigator.of(context).pop();
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
