import 'package:equatable/equatable.dart';

class TireEntity extends Equatable {
  final int id;
  final String serialNumber, make, companyGroupName;
  final num purchaseCost;

  const TireEntity({
    required this.id,
    required this.serialNumber,
    required this.make,
    required this.purchaseCost,
    required this.companyGroupName,
  });

  @override
  List<Object?> get props => [
        id,
        serialNumber,
        make,
        purchaseCost,
        companyGroupName,
      ];
}
