import 'package:dio/dio.dart';

class DocumentsRepository {
  Future getDocuments() async {
    final Response response = await Dio().get('https://jsonplaceholder.typicode.com/users');
    return response.data;
  }

}