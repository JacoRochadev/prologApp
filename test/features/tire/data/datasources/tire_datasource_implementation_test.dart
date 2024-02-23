import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prolog_app/features/tire/data/datasources/tire_datasource_implementation.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/shared/services/http_client/http_client_dio_implementation.dart';

void main() {
  Dio dio = Dio();
  HttpClientDioImplementation httpClient = HttpClientDioImplementation(dio);
  final datasource = TireDataSourceImplementation(httpClient);
  test(
      'return tires from the list on page 1 with 10 results in getAllTires ...',
      () async {
    // arrange
    Either<String, List<TireEntity>> response;
    // act
    response = await datasource.getAllTires(
      branchOfficesId: 215,
      pageSize: 10,
      pageNumber: 1,
    );
    // assert
    expect(response.isRight(), true);
  });

  test('return a specific tire by ID in getTireById ...', () async {
    // arrange
    Either<String, TireDetailsEntity> response;
    // act
    response = await datasource.getTireById(
      id: 1,
    );
    // assert
    expect(response.isRight(), true);
  });
}
