import 'package:flutter/material.dart';

class StylingThemesDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.orange), // Updated

        // Define the default font family.
        fontFamily: 'Roboto',

        // Define the default text styling.
        textTheme: TextTheme(
          headlineLarge:
              TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold), // Updated
          headlineMedium:
              TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic), // Updated
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'), // Updated
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple, // Updated
            foregroundColor: Colors.white, // Updated
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
      home: ThemeDemoHome(),
    );
  }
}

class ThemeDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling with Themes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Themed Text',
              style: Theme.of(context).textTheme.headlineMedium, // Updated
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Themed Button'),
            ),
          ],
        ),
      ),
    );
  }
}
