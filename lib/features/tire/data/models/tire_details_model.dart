import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';

class TireDetailsModel extends TireDetailsEntity {
  const TireDetailsModel({
    required super.id,
    required super.serialNumber,
    required super.tireSizeHeight,
    required super.tireSizeWidth,
    required super.timesRetreaded,
    required super.maxRetreadsExpected,
    required super.recommendedPressure,
    required super.currentPressure,
    required super.purchaseCost,
    required super.newTire,
    required super.make,
    required super.companyGroupName,
    required super.branchOfficeName,
    required super.status,
  });

  factory TireDetailsModel.fromJson(Map<String, dynamic> json) {
    return TireDetailsModel(
      id: json['id'],
      serialNumber: json['serialNumber'],
      tireSizeHeight: json['tireSize']['height'],
      tireSizeWidth: json['tireSize']['width'],
      timesRetreaded: json['timesRetreaded'],
      maxRetreadsExpected: json['maxRetreadsExpected'],
      recommendedPressure: json['recommendedPressure'],
      currentPressure: json['currentPressure'],
      purchaseCost: json['purchaseCost'],
      newTire: json['newTire'],
      make: json['make']['name'],
      companyGroupName: json['companyGroupName'],
      branchOfficeName: json['branchOfficeName'],
      status: json['status'],
    );
  }
}
