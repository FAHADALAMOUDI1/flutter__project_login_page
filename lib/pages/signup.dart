import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: prefer_const_constructors
      child: Scaffold(
          // ignore: prefer_const_constructors
          body: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 20,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "Sign up",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 33,
                            fontFamily: 'myfont',
                            color: Colors.purple),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 21,
                      ),

                      SvgPicture.asset(
                        "assets/assets/icons/signup.svg",
                        height: 200,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 27,
                      ),


                      
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {         },
                        
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              // ignore: prefer_const_constructors
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "sign up",
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 20,
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text("Already have an account? "),
                          // ignore: prefer_const_constructors
                          GestureDetector(
                            onTap: (){Navigator.pushNamed(context, '/login');},
                            // ignore: prefer_const_constructors
                            child: Text(" Log in" , style: TextStyle(fontWeight: FontWeight.bold),)),

                        ],
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                        width: 299,
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Colors.purple[900],),),
                          
                          Text("OR",style: TextStyle(color: Colors.purple[900]),),
                          
                            Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.purple[900],),),
                          ],
                        ),
                      ),
                      
                      Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple , width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/assets/icons/facebook.svg",
                      color: Colors.purple,
                      height: 30,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 22,),
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple , width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/assets/icons/google-plus.svg",
                      color: Colors.purple,
                      height: 30,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 22,),

                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple , width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/assets/icons/twitter.svg",
                      color: Colors.purple,
                      height: 30,
                    ),
                  ),
                
                
                ],
              ),
            ),
                      ],
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset(
                    "assets/assets/images/main_top.png",
                    width: 111,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/assets/images/login_bottom.png",
                    width: 111,
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}