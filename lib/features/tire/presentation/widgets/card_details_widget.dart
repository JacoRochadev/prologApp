import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.all(8.0),
      child: Card(
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
              value1: tireDetails.tireSizeHeight.toString(),
              value2: tireDetails.tireSizeWidth.toString(),
            ),
            CardItemWidget(
              label1: 'Pressão recomendada:',
              label2: 'Pressão atual:',
              value1: tireDetails.recommendedPressure.toString(),
              value2: tireDetails.currentPressure.toString(),
            ),
            CardItemWidget(
              label1: 'Status:',
              label2: 'Custo de compra:',
              value1: tireDetails.status,
              value2: tireDetails.purchaseCost.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
