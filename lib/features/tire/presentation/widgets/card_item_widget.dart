import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
    required this.label1,
    required this.label2,
    required this.value1,
    required this.value2,
  });

  final String label1;
  final String label2;
  final String value1;
  final String value2;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: screenWidth * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  label1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  value1,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  label2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  value2,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
