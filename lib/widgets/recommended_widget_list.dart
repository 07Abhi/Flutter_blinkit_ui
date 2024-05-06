import 'package:flutter/material.dart';

import '../models/test.dart';
import 'items_display_widget.dart';

class RecommendedListWidget extends StatelessWidget {
  final String? title;
  final List<CatalogItemsDetailsResponse>? itemsData;

  const RecommendedListWidget({
    super.key,
    this.itemsData,
    this.title,
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
        const SizedBox(height: 8.0),
        SizedBox(
          height: 280.0,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemDisplayWidget(
                dataModel: itemsData?[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 20.0);
            },
            itemCount: itemsData?.length ?? 0,
          ),
        )
      ],
    );
  }
}
