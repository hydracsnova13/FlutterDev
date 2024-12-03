import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget Showcase'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Widget
              Text(
                'Text Widget Example',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Image Widget
              Image.network(
                'https://flutter.dev/images/flutter-logo-sharing.png',
                height: 100,
              ),
              SizedBox(height: 10),

              // Container Widget with styling
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blueAccent,
                child: Text(
                  'Container Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),

              // Row and Column Widgets
              Text(
                'Row and Column Example',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                ],
              ),
              SizedBox(height: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                ],
              ),
              SizedBox(height: 10),

              // Stack Widget
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Button Widgets
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              SizedBox(height: 10),

              // ListView Widget (using a fixed height container to avoid overflow)
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 80,
                      color: Colors.green,
                      child: Center(child: Text('1')),
                    ),
                    Container(
                      width: 80,
                      color: Colors.blue,
                      child: Center(child: Text('2')),
                    ),
                    Container(
                      width: 80,
                      color: Colors.orange,
                      child: Center(child: Text('3')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Card Widget
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('This is a Card Widget'),
                ),
              ),
              SizedBox(height: 10),

              // Form with TextField Widget
              Text(
                'TextField Example',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
              SizedBox(height: 10),

              // Switch Widget
              StatefulSwitchExample(),

              // Slider Widget
              StatefulSliderExample(),

              // Icon Widget
              Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateful widget example for Switch
class StatefulSwitchExample extends StatefulWidget {
  @override
  _StatefulSwitchExampleState createState() => _StatefulSwitchExampleState();
}

class _StatefulSwitchExampleState extends State<StatefulSwitchExample> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Enable feature'),
        Switch(
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
        ),
      ],
    );
  }
}

// Stateful widget example for Slider
class StatefulSliderExample extends StatefulWidget {
  @override
  _StatefulSliderExampleState createState() => _StatefulSliderExampleState();
}

class _StatefulSliderExampleState extends State<StatefulSliderExample> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Adjust the value:'),
        Slider(
          value: _sliderValue,
          min: 0,
          max: 100,
          divisions: 10,
          label: _sliderValue.round().toString(),
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
        Text('Slider Value: ${_sliderValue.round()}'),
      ],
    );
  }
}
