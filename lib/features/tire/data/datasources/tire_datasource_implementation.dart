import 'package:prolog_app/core/services/dio_service/dio_service.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/data/models/tire_model.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

class TireDataSourceImplementation implements ITireDataSource {
  final DioService _service;

  TireDataSourceImplementation(this._service);

  @override
  Future<List<TireEntity>> getAllTires() async {
    Map<String, dynamic> queryParameters = {
      "branchOfficesId": 215,
      "pageSize": 100,
      "pageNumber": 1,
    };
    final response = await _service.dio.get(
      '',
      queryParameters: queryParameters,
    );
    bool status = response.data['empty'];
    if (!status) {
      var list = response.data['content'] as List;
      return list.map((e) => TireModel.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  @override
  Future<TireEntity> getTireById({required int id}) {
    // return dioServiceTire.getTireById(id: id);
    return Future.value(const TireModel(id: 1, serialNumber: '123'));
  }
}
