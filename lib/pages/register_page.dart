import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';

  final _passwordText = TextEditingController();
  final _passwordConfirmText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create An Account!",
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
                    "Fill in the details below",
                    style: GoogleFonts.montserrat(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Email",
                      labelStyle: GoogleFonts.montserrat(color: Colors.black),
                      //textInputDecorations.copyWith(hintText: 'Email'),
                    ),
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: TextFormField(
                    controller: _passwordText,
                    validator: (val) => val.length < 8
                        ? 'Password too short'
                        : (val != _passwordText.text
                            ? 'Passowrds do not match'
                            : null),
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.black),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Password",
                      labelStyle: GoogleFonts.montserrat(color: Colors.black),
                      //textInputDecorations.copyWith(hintText: 'Email'),
                    ),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: TextFormField(
                    controller: _passwordConfirmText,
                    validator: (val) => val.length < 8
                        ? 'Password too short'
                        : (val != _passwordText.text
                            ? 'Passowrds do not match'
                            : null),
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.black),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Confirm Password",
                      labelStyle: GoogleFonts.montserrat(color: Colors.black),
                    ),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                ),
                SizedBox(height: 20.0),
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
                          print(email);
                          print(password);
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);
                          if (result != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavPage()));
                          }
                        }
                      },
                      child: Text("REGISTER ACCOUNT",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18)),
                    )),
                SizedBox(
                  height: 0,
                ),
                Text(
                  error,
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40,
                    //color: Color.fromRGBO(148, 233, 174, 1),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Log In!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ])),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
