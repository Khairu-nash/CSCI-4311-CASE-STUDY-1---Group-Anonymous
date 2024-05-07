/* Muhammad Khairunas bin Noorizam - 2112383 */
class User {
  final String username;
  final String password;

  User({
    required this.username,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  User copyWith({
    String? username,
    String? password,
  }) {
    return User(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  bool userAuthenticate() {
    if (username == 'Nash' && password == 'password1') {
      return true;
    } else {
      return false;
    }
  }
}

class Admin {
  final String adminID;
  final String password;

  Admin({
    required this.adminID,
    required this.password,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      adminID: json['username'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': adminID,
      'password': password,
    };
  }

  Admin copyWith({
    String? adminID,
    String? password,
  }) {
    return Admin(
      adminID: adminID ?? this.adminID,
      password: password ?? this.password,
    );
  }

  bool adminAuthenticate() {
    if (adminID == '2112383' && password == 'password1') {
      return true;
    } else {
      return false;
    }
  }
}