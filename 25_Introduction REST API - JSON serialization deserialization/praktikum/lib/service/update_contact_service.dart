import 'package:dio/dio.dart';
import 'package:praktikum/constant/contact_api_constant.dart';
import 'package:praktikum/model/update_contact_model.dart';

abstract class UpdateContactServices {
  static Future<UpdateContact?> getById(int id) async {
    try {
      var response =
          await Dio().get('$urlUpdateContact/$id');
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return UpdateContact(
          id: response.data['id'],
          title: response.data['title'],
          body: response.data['body'],
          userId: response.data['userId'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<UpdateContact?> updatePosts(
    int id,
    int userId,
    String title,
    String body,
  ) async {
    try {
      var response = await Dio().put(
        '$urlUpdateContact/1',
        data: {
          'id': id,
          'userId': userId,
          'title': title,
          'body': body,
        },
      );
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return UpdateContact(
          id: response.data['id'],
          title: response.data['title'],
          body: response.data['body'],
          userId: response.data['userId'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
