/* Muhammad Khairunas bin Noorizam - 2112383 */
import 'package:web/helpers.dart';
import 'dart:html';
import 'dataset1.dart';

void main() {

  InputElement? username = querySelector('#username') as InputElement?;
  InputElement? password = querySelector('#password') as InputElement?;
  String? usrn = username!.value;
  String? upwd = password!.value;

  User user = User(username: usrn!, password: upwd!);
  Map<String, dynamic> json = user.toJson();
  bool usrBool = user.userAuthenticate();

  if (usrBool == true) {
    Element element = querySelector('#welcomeMessage') as Element;
    element.text = 'Welcome Nash!';
  } else {
    Element element = querySelector('#welcomeMessage') as Element; // Define the 'element' variable
    element.text = 'Invalid username or password'; // Use the 'element' variable
  }

  InputElement? adminID = querySelector('#adminID') as InputElement?;
  InputElement? apswd = querySelector('#apswd') as InputElement?;
  String? aname = adminID!.value;
  String? apwd = apswd!.value;

  Admin admin = Admin(adminID: aname!, password: apwd!);
  Map<String, dynamic> ajson = admin.toJson(); 
  bool admBool = admin.adminAuthenticate();
}
