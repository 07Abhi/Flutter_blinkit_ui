import 'package:blinkit_home/utils/fetch_image.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/test.dart';
import '../utils/card_clippers.dart';

class DealsOfTheDayItemWidget extends StatelessWidget {
  final CatalogItemsDetailsResponse? dataModel;

  const DealsOfTheDayItemWidget({
    super.key,
    this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 280.0,
            width: 220.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.yellow,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.0,
                  width: 70.0,
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6.0), color: Colors.grey?.withOpacity(0.5)),
                  child: const Row(
                    children: [
                      Icon(Icons.timer, color: Colors.black26, size: 15.0),
                      SizedBox(width: 4.0),
                      Text(
                        "8 MINS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10.0,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  dataModel?.itemTitle ?? "",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2.0),
                Text(
                  dataModel?.quantity ?? "",
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "₹${dataModel?.price}",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "₹${dataModel?.originalPrice}",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 20.0,
                      width: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.white,
                        border: Border.all(color: Colors.green),
                      ),
                      child: const Text(
                        AppConstants.add,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 5.0,
          child: Container(
            height: 40.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
            ),
            child: Text(
              "${dataModel?.discount}% \n OFF",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 40.0,
          child: SizedBox(
            height: 100.0,
            width: 100.0,
            child: fetchImage(
              "assets/icons/ic_ph.png",
              dataModel?.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
