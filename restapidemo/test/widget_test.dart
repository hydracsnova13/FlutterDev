import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restapidemo/main.dart';
import 'package:restapidemo/api_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'dart:convert';

void main() {
  testWidgets('Displays post data after API call', (WidgetTester tester) async {
    final apiService = ApiService();

    // Mock the API call
    apiService.client = MockClient((request) async {
      final response = jsonEncode({
        'userId': 1,
        'id': 1,
        'title': 'Test Title',
        'body': 'Test Body',
      });
      return http.Response(response, 200);
    });

    // Build the app and trigger a frame
    await tester.pumpWidget(MyApp());

    // Wait for the FutureBuilder to complete
    await tester
        .pumpAndSettle(); // Wait for all animations and futures to complete

    // Verify that the mock data is displayed
    expect(find.text('User ID: 1'), findsOneWidget);
    expect(find.text('Post ID: 1'), findsOneWidget);
    expect(find.text('Title: Test Title'), findsOneWidget);
    expect(find.text('Body: Test Body'), findsOneWidget);
  });
}
