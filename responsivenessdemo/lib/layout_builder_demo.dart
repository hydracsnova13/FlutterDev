import 'package:flutter/material.dart';

class LayoutBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBox(Colors.red, 'Box 1'),
                _buildBox(Colors.green, 'Box 2'),
                _buildBox(Colors.blue, 'Box 3'),
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBox(Colors.red, 'Box 1'),
                _buildBox(Colors.green, 'Box 2'),
                _buildBox(Colors.blue, 'Box 3'),
              ],
            );
          }
        },
      ),
    );
  }

  // Helper function to build boxes
  Widget _buildBox(Color color, String label) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
