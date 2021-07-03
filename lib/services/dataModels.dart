import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

var localUserProfile = {};

class UserProfile {
  final String firstName;
  final String lastName;
  final String salutation;

  UserProfile({this.firstName, this.lastName, this.salutation});

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'salutation': salutation,
      };

  UserProfile.fromJson(Map<String, dynamic> data)
      : firstName = data['firstName'],
        lastName = data['lastName'],
        salutation = data['salutation'];
}

class UserDetails {
  final String useType; //whether studying or working
  final String stayingType; //with family/alone etc
  final List<String> chosenTags;
  final String country; //country of interest
  final int movingStatus; //current status of using app

  UserDetails(
      {this.country,
      this.movingStatus,
      this.useType,
      this.stayingType,
      this.chosenTags});

  Map<String, dynamic> toJson() => {
        'Type of stay': stayingType,
        'Usage Type': useType,
        'Country': country,
        'Status': movingStatus == 1
            ? 'Preparing to move out'
            : movingStatus == 2
                ? 'Already moved out'
                : 'Undecided',
        'Tags chosen': chosenTags,
      };
}

final FirebaseAuth _auth = FirebaseAuth.instance;
final userId = _auth.currentUser.uid;
final dataBaseReference =
    FirebaseDatabase.instance.reference().child("user/$userId/");

Future<dynamic> loadUserProfile() async {
  return await dataBaseReference.once().then((result) {
    localUserProfile = result.value;
    return result.value;
  });
}
