import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forum/models/post_model.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ApiServices {
  String endpoint = "http://127.0.0.1:5000/api/posts";
  Future<List<PostsModel>> getPosts() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map(((e) => PostsModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final postProvider = Provider<ApiServices>((ref) => ApiServices());
