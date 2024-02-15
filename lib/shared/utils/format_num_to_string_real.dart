import 'package:intl/intl.dart';

String formatNumToStringReal(num valor) {
  var formatador = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return formatador.format(valor);
}
