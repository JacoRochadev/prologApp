import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:prolog_app/core/widgets/snackbar_mixin.dart';
import 'package:prolog_app/features/tire/presentation/stores/tire_store.dart';
import 'package:prolog_app/features/tire/presentation/widgets/card_details_widget.dart';

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

class _TireDetailsPageState extends State<TireDetailsPage> with SnackbarMixin {
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
        body: Observer(
          builder: (context) {
            if (widget.controller.isLoadingTireDetails &&
                widget.controller.tireDetails == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final tireDetails = widget.controller.tireDetails!.value;
              return Center(
                child: CardDetailsWidget(
                  tireDetails: tireDetails,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    widget.controller.getTireById(widget.id).then((value) {
      value.fold(
        (l) => showSnackBarError(l, context),
        (r) => widget.controller.changeTireDetails(r),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.tireDetails = null;
    super.dispose();
  }
}
