import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prolog_app/features/tire/presentation/stores/tire_store.dart';
import 'package:prolog_app/features/tire/presentation/widgets/list_item_widget.dart';
import 'package:prolog_app/features/tire/presentation/widgets/loading_pagination_widget.dart';
import 'package:prolog_app/shared/widgets/snackbar_mixin.dart';

class TirePage extends StatefulWidget {
  const TirePage({
    super.key,
    required this.controller,
  });

  final TireStore controller;

  @override
  State<TirePage> createState() => _TirePageState();
}

class _TirePageState extends State<TirePage> with SnackbarMixin {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: AppBar(
          title: Text(
            'Pneus',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
        body: Observer(
          builder: (context) {
            if (widget.controller.isLoadingTires &&
                widget.controller.tiresList.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          controller: _scrollController,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...widget.controller.tiresList.map(
                                (element) => ListItemWidget(
                                    element: element,
                                    onTap: () async {
                                      await Modular.to.pushNamed(
                                        '/tire/tire_details',
                                        arguments: element.id,
                                      );
                                    }),
                              ),
                              if (widget.controller.isLoadingTires &&
                                  widget.controller.tiresList.isNotEmpty)
                                const LoadingPaginationWidget()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
    widget.controller.getAllTires().then((value) {
      value.fold(
        (l) => showSnackBarError(l, context),
        (r) => widget.controller.changeTiresList(r),
      );
    });
    _addListener();
    super.initState();
  }

  void _addListener() {
    _scrollController.addListener(() {
      double maxScrollPosition = _scrollController.position.maxScrollExtent;
      double currentScrollPosition = _scrollController.position.pixels;
      if (maxScrollPosition <= (currentScrollPosition + 200) &&
          widget.controller.tiresList.isNotEmpty) {
        _addTimer(() {
          if (widget.controller.haveMore) {
            widget.controller.plusPagination();
            widget.controller.getAllTires().then((value) {
              value.fold(_showError, (r) {
                if (r.isEmpty) {
                  widget.controller.changeHaveMore();
                } else {
                  widget.controller.addToList(r);
                }
              });
            });
          }
        });
      }
    });
  }

  void _addTimer(VoidCallback function, {int duration = 100}) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: duration), () {
      function.call();
    });
  }

  void _showError(String error) {
    if (error == 'Pneus não encontrados') {
      widget.controller.changeHaveMore();
    } else {
      showSnackBarError(error, context);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
