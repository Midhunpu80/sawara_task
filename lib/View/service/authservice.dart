// ignore_for_file: camel_case_types, avoid_print

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sawara_task/View/utilities/Apiconfiguration/apiconfig.dart';

class signin_service extends GetxController {
  Apiconfig endpoint = Apiconfig();

  var isLoading = false.obs;
  Future signin({required var email, required var password}) async {
    final pass = sha256.convert(utf8.encode(password)).toString();

    Map<String, dynamic> payload = {
      'Email': email.toString(),
      'password': pass.toString(),
      'grant_type': 'password',
    };
    final head = {
      'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
      "Content-Type": "application/x-www-form-urlencoded"
    };
    print(payload);

    try {
      isLoading(true);
      final response = await http.post(
          Uri.parse(
              'https://apiv2stg.promilo.com/user/oauth/token?grant_type=password'),
          headers: head,
          body: Uri.encodeQueryComponent(payload.toString()));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        print(
            "${data.toString()}---------------------sucesss------${response.statusCode}----->");
        isLoading(false);
      } else {
        print("failed ----->${response.statusCode}${response.body} ");
        isLoading(false);
      }
    } catch (e) {
      print(e.toString());
      isLoading(false);
    }
  }

  String sha256Password(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }
}
