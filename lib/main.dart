import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,//remove debug text
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 40,//top se space
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,//image,texts ko center kiya
              crossAxisAlignment: CrossAxisAlignment.center, //image,texts ko center kiya
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maintence',
                      style: TextStyle(fontSize: 20, fontFamily: 'bold'),
                    ),
                    Text(
                      'Box',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'bold',
                          color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
                child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 24, fontFamily: 'bold', color: Color(0xff203142)),
            )),
            const SizedBox(
              height: 14,
            ),
            const Center(
                child: Text(
              'Welcome to my intersting app\n Asif Nafees',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, fontFamily: 'normal', color: Color(0xff4c5980)),
            )),
            const SizedBox(height: 30,),
         TextFormField(
             decoration:
             InputDecoration(border: InputBorder.none,//remove underline in text
               hintText: 'Email',
               prefixIcon:  Icon(Icons.email),
               fillColor:  Color(0xfff8f9fa),
               filled: true,
               focusedBorder:
               OutlineInputBorder(borderSide:
               BorderSide(color: Colors.black)),
             ),

           ),
            SizedBox(height: 10,),
            TextFormField(
              decoration:
              InputDecoration(border: InputBorder.none,//remove underline in text
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                fillColor: Color(0xfff8f9fa),
                filled: true,
                focusedBorder:
                OutlineInputBorder(borderSide:
                BorderSide(color: Colors.black)),
              ),

            ),
            SizedBox(height: 100,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: Center(
                  child: const Text(
                'Log In',
                style: TextStyle(
                    fontFamily: 'normal', fontSize: 16, color: Colors.white),
              )),
            ),
            SizedBox(height: 15,),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Dont have an account?\t\t',
                style: TextStyle(fontSize: 16,fontFamily:'normal'),),
              Text('Sign Up',
                style: TextStyle(fontSize: 16,
                    color: Colors.orange,fontFamily:'bold'),)],),
          ],
        ),
      ),
    );
  }
}
