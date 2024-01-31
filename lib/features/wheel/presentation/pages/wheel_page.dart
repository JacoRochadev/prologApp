import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WheelPage extends StatefulWidget {
  const WheelPage({super.key});

  @override
  State<WheelPage> createState() => _WheelPageState();
}

class _WheelPageState extends State<WheelPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/wheel/wheel_details');
            },
            child: const Text('teste'),
          ),
        ),
      ),
    );
  }
}
