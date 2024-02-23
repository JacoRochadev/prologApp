import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource.dart';
import 'package:prolog_app/features/tire/data/models/tire_details_model.dart';
import 'package:prolog_app/features/tire/data/models/tire_model.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/shared/clients/http_client/http_client.dart';
import 'package:prolog_app/shared/services/errors/parse_api_error_response.dart';

class TireDataSourceImplementation implements ITireDataSource {
  final HttpClient _service;

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
      const String path = 'api/v3/tires';
      final response = await _service.get(
        path,
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
  Future<Either<String, TireDetailsEntity>> getTireById({
    required int id,
  }) async {
    try {
      final String path = 'api/v3/tires/$id';
      final response = await _service.get(path);

      return Right(TireDetailsModel.fromJson(response.data));
    } on DioException catch (error) {
      return Left(parseApiErrorResponse(error.response?.data));
    } catch (error) {
      return Left(error.toString());
    }
  }
}
