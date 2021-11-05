import 'dart:convert';
import 'package:hooha_vendor/Urls/constantUrls.dart';
import 'package:http/http.dart' as http;

class LoginResponse{
  static Future loginUser(loginData) async{
    http.Response response =
    await http.post(Uri.parse(ConstantsUrls.Login_USER), body: loginData);
    if(response.statusCode==200) {
      String data = response.body;
      return jsonDecode(data);
    }
    else{
      print(response.statusCode);
    }

  }

}