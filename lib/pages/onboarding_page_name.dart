import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/set_up_profile_page1.dart';
import 'package:codefiesta_app/services/auth.dart';
import 'package:codefiesta_app/services/dataModels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetUpNamePage extends StatefulWidget {
  @override
  _SetUpNamePage createState() => _SetUpNamePage();
}

class _SetUpNamePage extends State<SetUpNamePage> {
  //firebase database reference

  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final dbRef = FirebaseDatabase.instance.reference().child('user');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static final List<String> nameSalutes = [
    'Mr',
    'Mrs',
    'Miss',
    'Dr',
    'Prof',
    'Mdm',
  ];
  String selectedSalute = nameSalutes.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    "How do we address you?",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                            value: selectedSalute,
                            style: GoogleFonts.montserrat(color: Colors.white),
                            items: nameSalutes
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  "$value",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }).toList(),
                            onChanged: (value) => setState(() {
                              this.selectedSalute = value;
                            }),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: TextFormField(
                    controller: _firstNameController,
                    validator: (val) =>
                        val.length < 2 ? 'Enter a valid name!' : '',
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "First name",
                      labelStyle: GoogleFonts.montserrat(color: Colors.black),
                    ),
                    onChanged: (val) {
                      setState(() => firstName = val);
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: TextFormField(
                    controller: _lastNameController,
                    validator: (val) =>
                        val.length < 2 ? 'Enter a valid name!' : '',
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Last name",
                      labelStyle: GoogleFonts.montserrat(color: Colors.black),
                    ),
                    onChanged: (val) {
                      setState(() => lastName = val);
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    TextButton(
                        child: Text("Next"),
                        onPressed: () async {
                          //update profile to firebase
                          var userData = UserProfile(
                              firstName: firstName,
                              lastName: lastName,
                              salutation: selectedSalute);
                          await dbRef
                              .child(_auth.currentUser.uid.toString())
                              .set(userData.toJson());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingUpProfile1(lastName: lastName)));
                        }),
                    Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_right, color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
