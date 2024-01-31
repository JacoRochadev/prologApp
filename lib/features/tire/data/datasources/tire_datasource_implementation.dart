import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prolog_app/core/errors/parse_api_error_response.dart';
import 'package:prolog_app/core/services/dio_service/dio_service.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/data/models/tire_model.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

class TireDataSourceImplementation implements ITireDataSource {
  final DioService _service;

  TireDataSourceImplementation(this._service);

  @override
  Future<Either<String, List<TireEntity>>> getAllTires({
    required int branchOfficesId,
    required int pageSize,
    required int pageNumber,
  }) async {
    try {
      Map<String, dynamic> queryParameters = {
        "branchOfficesId": branchOfficesId,
        "pageSize": pageSize,
        "pageNumber": pageNumber,
      };
      final response = await _service.dio.get(
        '',
        queryParameters: queryParameters,
      );
      bool status = response.data['empty'];
      if (!status) {
        var list = response.data['content'] as List;
        return Right(list.map((e) => TireModel.fromJson(e)).toList());
      } else {
        return Left(response.data['message']);
      }
    } on DioException catch (error) {
      return Left(parseApiErrorResponse(error.response?.data));
    } catch (error) {
      return Left(error.toString());
    }
  }

  @override
  Future<TireEntity> getTireById({required int id}) {
    // return dioServiceTire.getTireById(id: id);
    return Future.value(const TireModel(id: 1, serialNumber: '123'));
  }
}
