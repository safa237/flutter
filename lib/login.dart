import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column( children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Padding( padding: EdgeInsets.only(top: 40),
              child: Container(
                height: 250,
                color: Colors.deepPurple,
                child: Center(child: Text("Register",
                  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40),
                )),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Container(
              padding: const EdgeInsets.only(left: 20.0 ,right: 20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.only(left: 20.0 ,right: 20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone',
                prefixIcon: Icon(
                  Icons.phone,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.only(left: 20.0 ,right: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.only(left: 20.0 , right: 20.0,),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              width: 320, height: 50, color: Colors.deepPurple,
              child: MaterialButton(
                child: const Text('Register' ,
                  style: TextStyle(color: Colors.white  , fontSize: 20),),
                onPressed: () {
                  // ...
                },
              ),
            ),
          ),
          SizedBox(height: 10,),

          Center(
            child: Container(
              width: 320, height: 50, color: Colors.white,
              child: MaterialButton(
                child: const Text('Login' ,
                  style: TextStyle(color: Colors.deepPurple  , fontSize: 20),),
                onPressed: () {
                  // ...
                },
              ),
            ),
          ),

        ],

        ),
      ),
    );
  }
}


