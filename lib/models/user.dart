class User {
  String _name;
  String _username;
  String _password;
  int _phno;
  String _email;



  User(this._name, this._username, this._password,this._phno,this._email);
  User.fromMap(dynamic obj) {
    this._username = obj['username'];
    this._password = obj['password'];
  }

  User.map(dynamic obj) {
    this._name = obj['name'];
    this._username = obj['username'];
    this._password = obj['password'];
    this._phno = obj['phno'];
    this._email = obj['email'];

  }

  String get name => _name;
  String get username => _username;
  String get password => _password;
  int get phno => _phno;
  String get email => _email;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["username"] = _username;
    map["password"] = _password;
    map["phno"] = _phno;
    map["email"] = _email;
    return map;
  }
}