class User1 {
  String _pname;
  String _pusername;
  String _ppassword;
  int _pphno;
  String _pemail;



  User1(this._pname, this._pusername, this._ppassword,this._pphno,this._pemail);
  User1.fromMap(dynamic obj) {
    this._pusername = obj['pusername'];
    this._ppassword = obj['ppassword'];
  }

  User1.map(dynamic obj) {
    this._pname = obj['pname'];
    this._pusername = obj['pusername'];
    this._ppassword = obj['ppassword'];
    this._pphno = obj['pphno'];
    this._pemail = obj['pemail'];
  }

  String get pname => _pname;
  String get pusername => _pusername;
  String get ppassword => _ppassword;
  int get pphno => _pphno;
  String get pemail => _pemail;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["pname"] = _pname;
    map["pusername"] = _pusername;
    map["ppassword"] = _ppassword;
    map["pphno"] = _pphno;
    map["pemail"] = _pemail;
    return map;
  }
}