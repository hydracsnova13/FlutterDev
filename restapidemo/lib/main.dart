import 'package:flutter/material.dart';
import 'api_service.dart';
import 'post_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ApiService apiService = ApiService(); // Inject the ApiService

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REST API Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostScreen(apiService: apiService),
    );
  }
}

class PostScreen extends StatelessWidget {
  final ApiService apiService;

  PostScreen({required this.apiService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data from API'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: apiService.fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('User ID: ${snapshot.data!.userId}'),
                  Text('Post ID: ${snapshot.data!.id}'),
                  Text('Title: ${snapshot.data!.title}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Body: ${snapshot.data!.body}'),
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
