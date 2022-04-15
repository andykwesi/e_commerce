import 'dart:convert';

import 'package:e_commerce/models/login_response_model.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;



class Api{
  static var client = http.Client();

  // for login
  static Future<LoginResponse> login(String userName, String password) async {
    var response = await client.post(
      Uri.parse(
        "https://fake-authentication1.p.rapidapi.com/api/v1/authentication/login"
        ),

      headers: {
        'X-RapidAPI-Host': 'fake-authentication1.p.rapidapi.com',
        "X-RapidAPI-Key":"cd3a0312cbmsh9c6aaaffa9283e2p1738e4jsneabccc6512de",
        // "Content-Type": "application/json"
      },
    body: {
      'userName': userName,
      'password': password
    });

    if (response.statusCode == 200){
      var jsonString = response.body;

      return loginResponseFromJson(jsonString);
    }else{
      // Map<String, dynamic> result = json.decode(response.body.toString());
      throw PlatformException(code: "LOGIN ERROR", message: 'message');
    }
}}