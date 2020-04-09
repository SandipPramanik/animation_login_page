import 'package:animationloginpage/Animation/FadedAnimation.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
            home: MyApp())
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[900],
              Colors.green[800],
              Colors.green[400]
            ],
            begin: Alignment.topCenter
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  delay: 1,
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                ),
                SizedBox(height: 10),
              FadeAnimation(
                delay: 1.3,
                child: Text("Welcome Back !", style: TextStyle(color: Colors.white, fontSize: 18),),)
              ],
            ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                  FadeAnimation(
                    delay: 1.4,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 95, 0, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )
                          ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[300]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[600]),
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),),
                      SizedBox(height: 20,),
                  FadeAnimation(
                    delay: 1.5,
                    child: Text("Forget Password?", style: TextStyle(color: Colors.grey[600]),),),
                      SizedBox(height: 20,),
                  FadeAnimation(
                    delay: 1.6,
                    child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green[900]
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),),
                      SizedBox(height: 20,),
                  FadeAnimation(
                    delay: 1.7,
                    child: Text("Continue with Social Media", style: TextStyle(color: Colors.grey[600]),),),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FadeAnimation(
                              delay: 1.8,
                              child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2
                                  ),
                                ),
                              ),
                            ),)
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: FadeAnimation(
                              delay: 1.9,
                              child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text(
                                  "Github",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2
                                  ),
                                ),
                              ),
                            ),)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}