import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WheelDetailsPage extends StatefulWidget {
  const WheelDetailsPage({super.key});

  @override
  State<WheelDetailsPage> createState() => _WheelDetailsPageState();
}

class _WheelDetailsPageState extends State<WheelDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/wheel/');
            },
            child: const Text('teste2'),
          ),
        ),
      ),
    );
  }
}
