import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:github_search_test/src/features/search/models/users.dart';

final class RestService {
  final String _baseUrl = "https://api.github.com";

  final _dio = Dio();

  Future<Users> getUsers(String query, String page) async {
    try {
      final response =
          await _dio.get("$_baseUrl/search/users", queryParameters: {
        "q": query,
        "page": page,
      });
      return Users.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getFollowersCount(String followersUrl) async {
    try {
      final response = await _dio.get(followersUrl);
      log(response.data.toString());
      List<dynamic> followers = response.data;
      return followers.length;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
