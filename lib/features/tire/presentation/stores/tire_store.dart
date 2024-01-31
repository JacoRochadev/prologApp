import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/usecases/tire_usecases.dart';

part 'tire_store.g.dart';

// ignore: library_private_types_in_public_api
class TireStore = _TireStoreBase with _$TireStore;

abstract class _TireStoreBase with Store {
  final TireUseCases _tireUseCases;

  _TireStoreBase(this._tireUseCases);

  @observable
  ObservableFuture<Either<String, List<TireEntity>>>? _tires;

  @observable
  ObservableList<TireEntity> tiresList = <TireEntity>[].asObservable();

  @action
  void changeTiresList(List<TireEntity> value) =>
      tiresList = value.asObservable();

  @action
  void addToList(List<TireEntity> value) =>
      tiresList.addAll(value.asObservable());

  @action
  Future<Either<String, List<TireEntity>>> getAllTires() async {
    return _tires = ObservableFuture(
      _tireUseCases.getAllTires(
        branchOfficesId: 215,
        pageSize: pageSize,
        pageNumber: pageNumber,
      ),
    );
  }

  @computed
  bool get isLoadingTires => _tires?.status == FutureStatus.pending;
  int pageNumber = 20;

  int pageSize = 1;

  void resetPagination() => pageSize = 1;

  void plusPagination() => pageSize++;

  bool haveMore = true;

  void changeHaveMore() {
    haveMore = false;
  }

  void resetHaveMore() {
    haveMore = true;
  }
}
