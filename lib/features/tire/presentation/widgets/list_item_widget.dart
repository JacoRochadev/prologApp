import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';
import 'package:prolog_app/shared/utils/format_num_to_string_real.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    super.key,
    required this.element,
    required this.onTap,
  });

  final TireEntity element;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0XFF2E3D80),
            border: Border.all(
              color: Colors.white,
              width: .3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            trailing: const Icon(
              Icons.tire_repair,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Empresa: ${element.companyGroupName}',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Marca: ${element.make}',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                      ),
                ),
                Text(
                  'Custo: ${formatNumToStringReal(element.purchaseCost)}',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
