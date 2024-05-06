import 'package:flutter/material.dart';

import '../models/test.dart';
import 'deals_of_day_item_widget.dart';

class DealsOfTheDayWidget extends StatelessWidget {
  final String? title;
  final List<CatalogItemsDetailsResponse>? itemsData;

  const DealsOfTheDayWidget({
    super.key,
    this.title,
    this.itemsData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,

            color: Colors.indigo,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 300.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DealsOfTheDayItemWidget(
                dataModel: itemsData?[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12.0);
            },
            itemCount: itemsData?.length ?? 0,
          ),
        )
      ],
    );
  }
}
