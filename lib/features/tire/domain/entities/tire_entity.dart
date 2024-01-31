import 'package:equatable/equatable.dart';

class TireEntity extends Equatable {
  final int id;
  final String serialNumber;

  const TireEntity({
    required this.id,
    required this.serialNumber,
  });

  @override
  List<Object?> get props => [
        id,
        serialNumber,
      ];
}
