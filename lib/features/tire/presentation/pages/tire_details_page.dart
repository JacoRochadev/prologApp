import 'package:flutter/material.dart';
import 'package:prolog_app/features/tire/presentation/stores/tire_store.dart';

class TireDetailsPage extends StatefulWidget {
  const TireDetailsPage({
    super.key,
    required this.id,
    required this.controller,
  });

  final int id;
  final TireStore controller;

  @override
  State<TireDetailsPage> createState() => _TireDetailsPageState();
}

class _TireDetailsPageState extends State<TireDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Detalhes do Pneu',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
        body: const Center(
          child: Card(),
        ),
      ),
    );
  }
}
