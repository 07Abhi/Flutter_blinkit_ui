import 'package:flutter/material.dart';

import '../models/test.dart';
import '../utils/fetch_image.dart';

class CategoryItemWidget extends StatelessWidget {
  final CatalogItemsDetailsResponse? dataModel;

  const CategoryItemWidget({
    super.key,
    this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.09,
          width: MediaQuery.of(context).size.width*0.20,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.cyan.withOpacity(0.1), borderRadius: BorderRadius.circular(6.0)),
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: fetchImage(
              "assets/icons/ic_ph.png",
              dataModel?.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          width: 70.0,
          child: Text(
            dataModel?.itemTitle ?? "",
            style: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
