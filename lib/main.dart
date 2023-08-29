

// ignore_for_file: unused_element, prefer_const_constructors, dead_code

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: logintest(),
    );
  }
}

class logintest extends StatelessWidget {
  const logintest({super.key});

  @override
  Widget build(BuildContext context) {
     bool hidden=true;
    return Scaffold(

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 7, 0, 5),
              decoration: BoxDecoration(
                color:Colors.purple[100],
                borderRadius: BorderRadius.circular(66)
              ),
              width: 315,
              height: 45,
              child: TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:"Your Email :",
                  prefixIcon: Icon(Icons.person)


                ),
              ),
            ),
          
            Container(
              margin: EdgeInsets.symmetric(vertical: 27),
              padding: EdgeInsets.fromLTRB(15, 7, 0, 5),
              decoration: BoxDecoration(
                color:Colors.purple[100],
                borderRadius: BorderRadius.circular(66)
              ),
              width: 315,
              height: 45,
              child: TextField(
                obscureText: hidden,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:"Password :",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon:hidden ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(){
                        hidden =!hidden;

                      }
                      },),
                  


                ),
              ),
            ),
          
            ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 127,vertical: 10)),
            backgroundColor: MaterialStateProperty.all(Colors.purple[400]),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),

            
            
             ),
            onPressed: (){},
            child: Text("Login",style: TextStyle(fontSize: 25),))
          ],
        ),
      )



    );

  }
}

