import 'package:flutter/material.dart';

import '../models/test.dart';
import 'category_item_widget.dart';

class CategoryWidget extends StatelessWidget {
  final String? title;
  final List<CatalogItemsDetailsResponse>? itemsData;

  const CategoryWidget({
    super.key,
    this.itemsData,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: (itemsData?.length != null && itemsData!.length > 4) ? 200.0 : 100.0,
          child: Row(
            children: [
              Expanded(
                child: Wrap(
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.spaceBetween,
                  alignment: WrapAlignment.spaceBetween,
                  runSpacing: 10.0,
                  children: List.generate(
                    itemsData?.length ?? 0,
                    (index) => CategoryItemWidget(
                      dataModel: itemsData?[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
