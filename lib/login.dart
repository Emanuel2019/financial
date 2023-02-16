import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final blueColor = Color(0XFF5e92f3);
  final yellowColor = Color(0XFFfdd835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        buildBackgroundTopCircle(),
        buildBackgroundBottomCircle(),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 16, right: 16, top: 80, bottom: 40),
            child: Column(
              children: [
                Text(
                  'INICIAR A SESSÃO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                buildAvatarContainer(),
                Container(
                  height: 240,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 1)),
                      ]),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildTextField('EMAIL', 'Escreva o teu email', true),
                        SizedBox(
                          height: 35,
                        ),
                        buildTextField(
                            'PASSWORD', 'Escreva o teu password', true)
                      ],
                    ),
                  ),
                ),  Container(
                  margin:EdgeInsets.only(top:0),
                  child: Column(
                    children: [
                      Text('Forget Password', style: TextStyle(
                        color: blueColor,
                        decoration: TextDecoration.underline
                      ),),
                    ],
                  ),
                ),
                SizedBox(height:25),
                ElevatedButton(
                  
                  onPressed: (){

                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Text('LOGIN',style: TextStyle(fontSize: 18,color:Colors.white))
                ],))
              ],
            ),
          ),
        ),
       
      ]),
    );
  }

  Container buildTextField(
      String labelText, String placeholder, bool isPassword) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(color: blueColor, fontSize: 12),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: placeholder,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                )),
          )
        ],
      ),
    );
  }

  Container buildAvatarContainer() {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          color: yellowColor,
          borderRadius: BorderRadius.circular(65),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 20,
            )
          ]),
      child: Center(
          child: Stack(
        children: [
          Positioned(
              left: 1.0,
              height: 3.0,
              child: Icon(
                Icons.person_outline,
                size: 60,
                color: Colors.black.withOpacity(.1),
              )),
          Icon(
            Icons.person_outline,
            size: 60,
            color: Colors.white,
          ),
        ],
      )),
    );
  }

  Positioned buildBackgroundBottomCircle() {
    return Positioned(
      top: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.width,
      right: MediaQuery.of(context).size.width / 2,
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: blueColor.withOpacity(0.15),
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width)),
      ),
    );
  }

  Positioned buildBackgroundTopCircle() {
    return Positioned(
        top: 0,
        child: Transform.translate(
          offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
          child: Transform.scale(
            scale: 1.35,
            child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius:
                      BorderRadius.circular(MediaQuery.of(context).size.width)),
            ),
          ),
        ));
  }
}
