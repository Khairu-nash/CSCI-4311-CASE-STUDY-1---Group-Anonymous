import 'dataset1.dart';

void main() {
  // Create a user instance
  User user = User(username: 'nash', password: 'password1');
  
  // Test the toJson method
  Map<String, dynamic> json = user.toJson();
  print(json); // Output: {username: nash, password: password1}
  
  // Test the copyWith method
  User copiedUser = user.copyWith(password: 'newPassword');
  print(copiedUser.username); // Output: nash
  print(copiedUser.password); // Output: newPassword
  
  // Test the userAuthenticate method
  bool isAuthenticated = user.userAuthenticate();
  print(isAuthenticated); // Output: true (if the username and password match)
}