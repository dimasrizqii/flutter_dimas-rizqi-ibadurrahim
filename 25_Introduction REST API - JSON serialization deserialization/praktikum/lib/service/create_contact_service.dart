import 'package:dio/dio.dart';
import 'package:praktikum/constant/contact_api_constant.dart';
import 'package:praktikum/model/create_contact_model.dart';

abstract class CreateContactServices {
  static Future<CreateContact?> getAllUser() async {
    try {
      var response = await Dio().get(urlCreateContact);

      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return CreateContact(
          id: response.data['id'],
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<CreateContact?> getById(int id) async {
    try {
      var response = await Dio().get(
          '$urlCreateContact/$id');
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return CreateContact(
          id: response.data['id'],
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<CreateContact?> createUser(String name, String phone) async {
    try {
      var response = await Dio().post(
        urlCreateContact,
        data: {
          'name': name,
          'phone': phone,
        },
      );
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 201) {
        return CreateContact(
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }
}
