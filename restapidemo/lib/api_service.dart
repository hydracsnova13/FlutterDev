import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post_model.dart'; // Ensure post_model.dart is imported correctly

class ApiService {
  http.Client client = http.Client();

  Future<Post> fetchPost() async {
    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    );

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
