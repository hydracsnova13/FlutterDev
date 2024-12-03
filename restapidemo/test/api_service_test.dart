import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:restapidemo/api_service.dart';
import 'package:restapidemo/post_model.dart';
import 'dart:convert';
import 'package:http/testing.dart';

void main() {
  group('ApiService', () {
    test('fetchPost returns a Post object when API call is successful',
        () async {
      final apiService = ApiService();

      // Mock the HTTP GET request
      apiService.client = MockClient((request) async {
        final response = jsonEncode({
          'userId': 1,
          'id': 1,
          'title': 'Test Title',
          'body': 'Test Body',
        });
        return http.Response(response, 200);
      });

      Post post = await apiService.fetchPost();

      // Test the result
      expect(post.userId, 1);
      expect(post.id, 1);
      expect(post.title, 'Test Title');
      expect(post.body, 'Test Body');
    });

    test('fetchPost throws an exception when API call fails', () async {
      final apiService = ApiService();

      // Mock the HTTP GET request with an error
      apiService.client = MockClient((request) async {
        return http.Response('Not Found', 404);
      });

      expect(apiService.fetchPost(), throwsException);
    });
  });
}
