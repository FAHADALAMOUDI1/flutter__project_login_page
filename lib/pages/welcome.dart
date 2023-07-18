import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        height: 30,
                      ),
                    // ignore: prefer_const_constructors
                    Text("Hi, Be Smile",style: TextStyle(fontSize: 33, fontFamily: 'myfont',color: Colors.purple),),
                    // ignore: prefer_const_constructors
                    SizedBox(
                        height: 40,
                      ),

                    SvgPicture.asset("assets/assets/icons/chat.svg", width: 288,),
                      SizedBox(
                        height: 50,
                        
                      ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 22,
                      ),
                    
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[100]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                        ),
                      ),
                  ],),
              ),

              Positioned(
                left: 0,
                child: Image.asset("assets/assets/images/main_top.png" ,width: 111,),
              ),
              
              Positioned(
                bottom: 0,
                child: Image.asset("assets/assets/images/main_bottom.png" ,width: 111,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
