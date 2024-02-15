enum StatusEnum {
  inventory('INVENTORY'),
  analysis('ANALYSIS'),
  installed('INSTALLED'),
  disposal('DISPOSAL');

  const StatusEnum(this.value);
  final String value;

  String get name => switch (this) {
        StatusEnum.inventory => 'Inventário',
        StatusEnum.analysis => 'Análise',
        StatusEnum.installed => 'Instalado',
        StatusEnum.disposal => 'Disponível',
      };

  static StatusEnum? fromPortuguese(String? value) => switch (value) {
        'INVENTORY' => StatusEnum.inventory,
        'ANALYSIS' => StatusEnum.analysis,
        'INSTALLED' => StatusEnum.installed,
        'DISPOSAL' => StatusEnum.disposal,
        _ => null,
      };
}
