// ignore_for_file: use_rethrow_when_possible

import 'package:e_commerce/models/login_response_model.dart';
import 'package:e_commerce/services/authentication.dart';
import 'package:get/get.dart';

class LoginControler extends GetxController{
  var isLoading = false.obs;
  var loginResponse = LoginResponse().obs;

  var error = "".obs;

  Future login(String userName, String password) async {
    try {
      isLoading(true);

      final response = Api.login(userName, password);
      return response;
    } catch (e) {
      isLoading(false);
      throw(e);
    } finally{
      isLoading(false);
    }
  }
}