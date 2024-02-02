import 'package:equatable/equatable.dart';
import 'package:prolog_app/core/utils/enums/status_enum.dart';

class TireDetailsEntity extends Equatable {
  final String serialNumber, make, companyGroupName, branchOfficeName;
  final StatusEnum? status;
  final int id, timesRetreaded, maxRetreadsExpected;
  final num purchaseCost,
      tireSizeHeight,
      recommendedPressure,
      tireSizeWidth,
      currentPressure;
  final bool newTire;

  const TireDetailsEntity({
    required this.id,
    required this.serialNumber,
    required this.tireSizeHeight,
    required this.tireSizeWidth,
    required this.timesRetreaded,
    required this.maxRetreadsExpected,
    required this.recommendedPressure,
    required this.currentPressure,
    required this.purchaseCost,
    required this.newTire,
    required this.make,
    required this.companyGroupName,
    required this.branchOfficeName,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        serialNumber,
        tireSizeHeight,
        tireSizeWidth,
        timesRetreaded,
        maxRetreadsExpected,
        recommendedPressure,
        currentPressure,
        purchaseCost,
        newTire,
        make,
        companyGroupName,
        branchOfficeName,
        status,
      ];
}
