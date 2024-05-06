import 'package:blinkit_home/utils/fetch_image.dart';
import 'package:flutter/material.dart';

import '../models/test.dart';

class ItemRoundWidget extends StatelessWidget {
  final CatalogItemsDetailsResponse? dataModel;

  const ItemRoundWidget({
    super.key,
    this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 90.0,
              width: 90.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
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
            Container(
              height: 20.0,
              width: 90.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Text(
                "UP TO ${dataModel?.discount ?? ""}% OFF",
                style: const TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 6.0),
        SizedBox(
          width: 100.0,
          child: Text(
            dataModel?.itemTitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black),
          ),
        )
      ],
    );
  }
}
