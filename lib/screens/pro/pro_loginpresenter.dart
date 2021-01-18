import 'package:recipeapp/models/user1.dart';
import 'package:recipeapp/data/rest_data1.dart';
abstract class LoginPageContract{
  void onLoginSuccess(User1 user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doLogin(String username, String password){
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError));
  }
}