import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TireDetailsPage extends StatefulWidget {
  const TireDetailsPage({super.key});

  @override
  State<TireDetailsPage> createState() => _TireDetailsPageState();
}

class _TireDetailsPageState extends State<TireDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed('/tire/');
            },
            child: const Text('teste2'),
          ),
        ),
      ),
    );
  }
}
