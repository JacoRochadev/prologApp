import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/features/tire/domain/usecases/tire_usecases.dart';

part 'tire_store.g.dart';

// ignore: library_private_types_in_public_api
class TireStore = _TireStoreBase with _$TireStore;

abstract class _TireStoreBase with Store {
  final TireUseCases _tireUseCases;

  _TireStoreBase(this._tireUseCases);

  @observable
  ObservableFuture<Either<String, TireDetailsEntity>>? _tire;

  @observable
  ObservableFuture<Either<String, List<TireEntity>>>? _tires;

  @observable
  Observable<TireDetailsEntity>? tireDetails;

  @observable
  ObservableList<TireEntity> tiresList = <TireEntity>[].asObservable();

  @action
  Future<Either<String, TireDetailsEntity>> getTireById(int id) {
    return _tire = ObservableFuture(
      _tireUseCases.getTireById(id: id),
    );
  }

  @action
  void changeTireDetails(TireDetailsEntity value) =>
      tireDetails = Observable(value);

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

  @action
  void changeTiresList(List<TireEntity> value) =>
      tiresList = value.asObservable();

  @action
  void addToList(List<TireEntity> value) =>
      tiresList.addAll(value.asObservable());

  @computed
  bool get isLoadingTireDetails => _tire?.status == FutureStatus.pending;

  @computed
  bool get isLoadingTires => _tires?.status == FutureStatus.pending;

  int pageNumber = 0;

  int pageSize = 15;

  void plusPagination() => pageNumber++;

  bool haveMore = true;

  void changeHaveMore() {
    haveMore = false;
  }

  void resetHaveMore() {
    haveMore = true;
  }
}
