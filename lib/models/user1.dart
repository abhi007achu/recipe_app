class User1 {
  String _pname;
  String _pusername;
  String _ppassword;
  int _pphno;
  String _pemail;
  String _flaglogged;
  String _pfav1;
  String _pfav2;




  User1(this._pname, this._pusername, this._ppassword,this._pphno,this._pemail,this._flaglogged,this._pfav1,this._pfav2);

  User1.map(dynamic obj) {
    this._pname = obj['pname'];
    this._pusername = obj['pusername'];
    this._ppassword = obj['ppassword'];
    this._pphno = obj['pphno'];
    this._pemail = obj['pemail'];
    this._flaglogged = obj['password'];
    this._pfav1 = obj['pfav1'];
    this._pfav2 = obj['pfav2'];
  }

  String get pname => _pname;
  String get pusername => _pusername;
  String get ppassword => _ppassword;
  int get pphno => _pphno;
  String get pemail => _pemail;
  String get flaglogged => _flaglogged;
  String get pfav1 => _pfav1;
  String get pfav2 => _pfav2;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["pname"] = _pname;
    map["pusername"] = _pusername;
    map["ppassword"] = _ppassword;
    map["pphno"] = _pphno;
    map["pemail"] = _pemail;
    map["flaglogged"] = _flaglogged;
    map["pfav1"] = _pfav1;
    map["pfav2"] = _pfav2;
    return map;
  }
}