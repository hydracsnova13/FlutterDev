import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  const MyWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget Showcase'),
          backgroundColor: Colors.deepPurple,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Heading for Text Widget
                      _buildSectionTitle('Text Widget'),
                      const Text(
                        'This is a simple text widget',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      const SizedBox(height: 20),

                      // Image Widget with label
                      _buildSectionTitle('Image Widget'),
                      Image.network(
                        'https://flutter.dev/images/flutter-logo-sharing.png',
                        height: 100,
                      ),
                      const SizedBox(height: 20),

                      // Container Widget with styling
                      _buildSectionTitle('Container Widget'),
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.blueAccent,
                        child: const Text(
                          'This is a container widget with padding and background color',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Row and Column Widgets
                      _buildSectionTitle('Row and Column Widgets'),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 30),
                          Icon(Icons.star, color: Colors.orange, size: 30),
                          Icon(Icons.star, color: Colors.orange, size: 30),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('This is column item 1'),
                          Text('This is column item 2'),
                          Text('This is column item 3'),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Stack Widget
                      _buildSectionTitle('Stack Widget'),
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
                      const SizedBox(height: 20),

                      // Button Widgets
                      _buildSectionTitle('Button Widgets'),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Elevated Button'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Text Button'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Outlined Button'),
                      ),
                      const SizedBox(height: 20),

                      // ListView Widget (Horizontal)
                      _buildSectionTitle('Horizontal ListView Widget'),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 80,
                              color: Colors.green,
                              child: const Center(child: Text('Item 1')),
                            ),
                            Container(
                              width: 80,
                              color: Colors.blue,
                              child: const Center(child: Text('Item 2')),
                            ),
                            Container(
                              width: 80,
                              color: Colors.orange,
                              child: const Center(child: Text('Item 3')),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Card Widget
                      _buildSectionTitle('Card Widget'),
                      const Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('This is a Card Widget'),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Form with TextField Widget
                      _buildSectionTitle('TextField Widget'),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your name',
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Switch Widget (Stateful)
                      _buildSectionTitle('Switch Widget'),
                      StatefulSwitchExample(),

                      // Slider Widget (Stateful)
                      _buildSectionTitle('Slider Widget'),
                      StatefulSliderExample(),

                      // Icon Widget
                      _buildSectionTitle('Icon Widget'),
                      const Icon(Icons.flutter_dash,
                          size: 50, color: Colors.blue),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Function to build section titles
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

// Stateful widget example for Switch
class StatefulSwitchExample extends StatefulWidget {
  const StatefulSwitchExample({super.key});

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
        const Text('Enable feature'),
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
  const StatefulSliderExample({super.key});

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
        const Text('Adjust the value:'),
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
