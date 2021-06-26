import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class UserProfile {
  final String uid;

  UserProfile({this.uid});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserProfile>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProfile>(context);

    //return either home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return NavPage();
    }
  }
}
