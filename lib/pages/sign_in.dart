import 'package:codefiesta_app/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';
  bool _obscureText = true;

  //toggles the password field to show or hide password
  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        width: 250.0,
                        height: 250.0,
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/home.png'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome Back!",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Please sign in to continue",
                          style: GoogleFonts.montserrat(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      //Username container
                      Container(
                        child: TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Enter an email' : null,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            labelText: "Email",
                            labelStyle:
                                GoogleFonts.montserrat(color: Colors.black),
                            //textInputDecorations.copyWith(hintText: 'Email'),
                          ),
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                      ),
                      SizedBox(height: 5),
                      //Password container
                      Container(
                        child: TextFormField(
                          //controller: passwordController,
                          validator: (val) =>
                              val.length < 8 ? 'Password too short' : null,
                          obscureText: _obscureText,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye, color: Colors.black),
                              color: Colors.white,
                              onPressed: () {
                                _togglePassword();
                              },
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            labelText: "Password",
                            labelStyle:
                                GoogleFonts.montserrat(color: Colors.black),
                          ),
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                            },
                            child: RichText(
                                text: TextSpan(children: [
                                TextSpan(
                                  text: 'Forgot password?',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            ])),
                      )),
                      SizedBox(height: 0.0),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                await _auth.signInWithEmailAndPassword(
                                    email: email, password: password);
                              }
                            },
                            //style: TextButton.styleFrom(primary: Colors.transparent),
                            child: Text("SIGN IN",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                          )),

                       Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            //style: TextButton.styleFrom(primary: Colors.transparent),
                            child: Text("Sign in with Singpass",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                      )),   
                      Container(
                          margin: EdgeInsets.all(0),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 40,
                          //color: Color.fromRGBO(148, 233, 174, 1),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => Register()),
                              );
                            },
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "No account? ",
                                  style: TextStyle(color: Colors.grey[400])),
                              TextSpan(
                                  text: ' Sign Up!',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            ])),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
