import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TirePage extends StatefulWidget {
  const TirePage({super.key});

  @override
  State<TirePage> createState() => _TirePageState();
}

class _TirePageState extends State<TirePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/tire/tire_details');
            },
            child: const Text('teste'),
          ),
        ),
      ),
    );
  }
}
