import 'package:flutter/material.dart';
import 'package:prolog_app/core/utils/format_num_to_string_real.dart';
import 'package:prolog_app/core/utils/parse_num_to_string_psi.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_details_entity.dart';
import 'package:prolog_app/features/tire/presentation/widgets/card_item_widget.dart';

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({
    super.key,
    required this.tireDetails,
  });

  final TireDetailsEntity tireDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CardItemWidget(
                label1: 'Empresa:',
                label2: 'Filial:',
                value1: tireDetails.companyGroupName,
                value2: tireDetails.branchOfficeName,
              ),
              CardItemWidget(
                label1: 'Marca:',
                label2: 'Condição:',
                value1: tireDetails.make,
                value2: tireDetails.newTire ? 'Novo' : 'Usado',
              ),
              CardItemWidget(
                label1: 'Altura:',
                label2: 'Largura:',
                value1: '${tireDetails.tireSizeHeight.toStringAsFixed(1)} cm',
                value2: '${tireDetails.tireSizeWidth.toStringAsFixed(1)} cm',
              ),
              CardItemWidget(
                label1: 'Pressão recomendada:',
                label2: 'Pressão atual:',
                value1: parseNumToStringPsi(tireDetails.recommendedPressure),
                value2: parseNumToStringPsi(tireDetails.currentPressure),
              ),
              CardItemWidget(
                label1: 'Status:',
                label2: 'Custo de compra:',
                value1: tireDetails.status?.name ?? '',
                value2: formatNumToStringReal(tireDetails.purchaseCost),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
