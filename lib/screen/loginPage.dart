import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/screen/secondPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //  text  controller 
  final _emailController = TextEditingController();
  final _passwordController  = TextEditingController();
  // String email = 'ELmar465@gmail.com';
  // int password = 12345; 


  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFF2F2F2), Color(0xFFADA996) ],
            )
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.admin_panel_settings, size: 130.0, color: Colors.black,),
                  // Tech campa xos gelmisiniz 
                  const SizedBox(height: 10,),
                  Text("Welcome to Tech Camp", style: GoogleFonts.bebasNeue(
                    fontSize: 35.0 
                  )),
                  const SizedBox(height: 10,),
                  const Text('Welcome back, you\'ve been missed!', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  // email textfield 
                  const SizedBox(height: 50,),

                  // email textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Email",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  // password textfield
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Password",
                        fillColor: Colors.grey[200],
                        filled: true
                      ),
                    ),
                    
                  ),
                  const SizedBox(height: 10,),
                  // sign in button
                  ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(10.0),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                        minimumSize: MaterialStateProperty.all(Size(340.0, 50)),
                        fixedSize: MaterialStateProperty.all(Size(330, 50)),
                        side: MaterialStateProperty.all(BorderSide(color: Colors.green)),
                      ),
                      autofocus: true,
                      child: const Text("Sign In", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold) ,),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
                        
                      },
                  ),
                  const SizedBox(height: 25,),
                  // not a member ? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Not a member?", style: TextStyle( fontWeight: FontWeight.bold), ),
                      const Text("  Register now", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}