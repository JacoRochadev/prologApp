import 'package:flutter/material.dart';
import 'package:prolog_app/features/tire/domain/entities/tire_entity.dart';

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
            border: Border.all(
              color: Colors.black,
              width: .3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            title: Text(
              element.serialNumber,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
