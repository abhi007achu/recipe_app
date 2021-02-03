class Recipe {
  String _dname;
  String _rec1;
  String _rec2;
  String _rec3;
  String _rec4;
  String _rec5;
  String _rec6;
  String _rec7;
  String _rec8;
  String _rec9;
  String _rec10;
  String _rec11;
  String _rec12;
  String _rec13;

  Recipe(this._dname, this._rec1, this._rec2,this._rec3,this._rec4, this._rec5, this._rec6, this._rec7, this._rec8,this._rec9,this._rec10, this._rec11, this._rec12, this._rec13);

  Recipe.map(dynamic obj) {
    this._dname = obj['dname'];
    this._rec1 = obj['rec1'];
    this._rec2 = obj['rec2'];
    this._rec3 = obj['rec3'];
    this._rec4 = obj['rec4'];
    this._rec5 = obj['rec5'];
    this._rec6 = obj['rec6'];
    this._rec1 = obj['rec7'];
    this._rec2 = obj['rec8'];
    this._rec3 = obj['rec9'];
    this._rec4 = obj['rec10'];
    this._rec5 = obj['rec11'];
    this._rec6 = obj['rec12'];
    this._rec1 = obj['rec13'];
  }

  String get dname => _dname;
  String get rec1 => _rec1;
  String get rec2 => _rec2;
  String get rec3 => _rec3;
  String get rec4 => _rec4;
  String get rec5 => _rec5;
  String get rec6 => _rec6;
  String get rec7 => _rec7;
  String get rec8 => _rec8;
  String get rec9 => _rec9;
  String get rec10 => _rec10;
  String get rec11 => _rec11;
  String get rec12 => _rec12;
  String get rec13 => _rec13;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["dname"] = _dname;
    map["rec1"] = _rec1;
    map["rec2"] = _rec2;
    map["rec3"] = _rec3;
    map["rec4"] = _rec4;
    map["rec5"] = _rec5;
    map["rec6"] = _rec6;
    map["rec7"] = _rec7;
    map["rec8"] = _rec8;
    map["rec9"] = _rec9;
    map["rec10"] = _rec10;
    map["rec11"] = _rec11;
    map["rec12"] = _rec12;
    map["rec13"] = _rec13;
    return map;
  }
  Recipe.fromMapObject(Map<String, dynamic> map) {
    this._dname = map['dname'];
    this._rec1 = map['rec1'];
    this._rec2 = map['rec2'];
    this._rec3 = map['rec3'];
    this._rec4 = map['rec4'];
    this._rec5 = map['rec5'];
    this._rec6 = map['rec6'];
    this._rec7 = map['rec7'];
    this._rec8 = map['rec8'];
    this._rec9 = map['rec9'];
    this._rec10 = map['rec10'];
    this._rec11 = map['rec11'];
    this._rec12 = map['rec12'];
    this._rec13 = map['rec13'];

  }
}