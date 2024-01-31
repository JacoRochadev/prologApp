// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tire_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TireStore on _TireStoreBase, Store {
  Computed<bool>? _$isLoadingTiresComputed;

  @override
  bool get isLoadingTires =>
      (_$isLoadingTiresComputed ??= Computed<bool>(() => super.isLoadingTires,
              name: '_TireStoreBase.isLoadingTires'))
          .value;

  late final _$_tiresAtom =
      Atom(name: '_TireStoreBase._tires', context: context);

  @override
  ObservableFuture<Either<String, List<TireEntity>>>? get _tires {
    _$_tiresAtom.reportRead();
    return super._tires;
  }

  @override
  set _tires(ObservableFuture<Either<String, List<TireEntity>>>? value) {
    _$_tiresAtom.reportWrite(value, super._tires, () {
      super._tires = value;
    });
  }

  late final _$tiresListAtom =
      Atom(name: '_TireStoreBase.tiresList', context: context);

  @override
  ObservableList<TireEntity> get tiresList {
    _$tiresListAtom.reportRead();
    return super.tiresList;
  }

  @override
  set tiresList(ObservableList<TireEntity> value) {
    _$tiresListAtom.reportWrite(value, super.tiresList, () {
      super.tiresList = value;
    });
  }

  late final _$getAllTiresAsyncAction =
      AsyncAction('_TireStoreBase.getAllTires', context: context);

  @override
  Future<Either<String, List<TireEntity>>> getAllTires() {
    return _$getAllTiresAsyncAction.run(() => super.getAllTires());
  }

  late final _$_TireStoreBaseActionController =
      ActionController(name: '_TireStoreBase', context: context);

  @override
  void changeTiresList(List<TireEntity> value) {
    final _$actionInfo = _$_TireStoreBaseActionController.startAction(
        name: '_TireStoreBase.changeTiresList');
    try {
      return super.changeTiresList(value);
    } finally {
      _$_TireStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToList(List<TireEntity> value) {
    final _$actionInfo = _$_TireStoreBaseActionController.startAction(
        name: '_TireStoreBase.addToList');
    try {
      return super.addToList(value);
    } finally {
      _$_TireStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tiresList: ${tiresList},
isLoadingTires: ${isLoadingTires}
    ''';
  }
}
