import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

class TireModel extends TireEntity {
  const TireModel({
    required super.id,
    required super.serialNumber,
  });

  factory TireModel.fromJson(Map<String, dynamic> json) {
    return TireModel(
      id: json['id'],
      serialNumber: json['serialNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'serialNumber': serialNumber,
    };
  }

  @override
  List<Object> get props => [
        id,
        serialNumber,
      ];
}
