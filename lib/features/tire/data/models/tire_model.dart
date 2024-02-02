import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

class TireModel extends TireEntity {
  const TireModel({
    required super.id,
    required super.serialNumber,
    required super.make,
    required super.purchaseCost,
    required super.companyGroupName,
  });

  factory TireModel.fromJson(Map<String, dynamic> json) {
    return TireModel(
      id: json['id'],
      serialNumber: json['serialNumber'],
      make: json['make']['name'],
      purchaseCost: json['purchaseCost'],
      companyGroupName: json['companyGroupName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'serialNumber': serialNumber,
      'make': make,
      'purchaseCost': purchaseCost,
      'companyGroupName': companyGroupName,
    };
  }

  @override
  List<Object> get props => [
        id,
        serialNumber,
        make,
        purchaseCost,
        companyGroupName,
      ];
}
