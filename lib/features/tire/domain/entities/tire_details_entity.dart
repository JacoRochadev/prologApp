import 'package:equatable/equatable.dart';

class TireDetailsEntity extends Equatable {
  final int id;
  final String serialNumber;
  final int tireSizeHeight,
      tireSizeWidth,
      timesRetreaded,
      maxRetreadsExpected,
      recommendedPressure,
      currentPressure;

  final double purchaseCost;

  final bool newTire;

  final String make, companyGroupName, branchOfficeName, status;

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
