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
}
