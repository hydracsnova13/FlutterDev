import 'package:flutter/material.dart';

class ChainedAnimationDemo extends StatefulWidget {
  @override
  _ChainedAnimationDemoState createState() => _ChainedAnimationDemoState();
}

class _ChainedAnimationDemoState extends State<ChainedAnimationDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late Animation<double> _animation1;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller1 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animation1 = Tween<double>(begin: 0, end: 200).animate(_controller1);
    _animation2 = Tween<double>(begin: 0, end: 300).animate(_controller2);

    _controller1.forward().then((_) {
      _controller2.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chained Animation Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation1,
              builder: (context, child) {
                return Container(
                  width: _animation1.value,
                  height: 100,
                  color: Colors.red,
                );
              },
            ),
            SizedBox(height: 20),
            AnimatedBuilder(
              animation: _animation2,
              builder: (context, child) {
                return Container(
                  width: _animation2.value,
                  height: 100,
                  color: Colors.green,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
