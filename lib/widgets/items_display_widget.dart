import 'package:blinkit_home/constant.dart';
import 'package:blinkit_home/utils/fetch_image.dart';
import 'package:flutter/material.dart';

import '../models/test.dart';

class ItemDisplayWidget extends StatelessWidget {
  final CatalogItemsDetailsResponse? dataModel;

  const ItemDisplayWidget({
    super.key,
    this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                left: 6.0,
                child: Container(
                  height: 25.0,
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
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
                      fontSize: 8.0,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.black26, width: 0.5),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                child: SizedBox(
                  height: 80.0,
                  width: 60.0,
                  child: fetchImage(
                    "assets/icons/ic_ph.png",
                    dataModel?.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppConstants.limitedStock,
                style: TextStyle(
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 3.0),
              Container(
                height: 5.0,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: Colors.blue.withOpacity(0.2)),
                child: Container(
                  height: 5.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 4.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.0,
                width: 60.0,
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6.0), color: Colors.grey.withOpacity(0.1)),
                child: const Row(
                  children: [
                    Icon(Icons.timer, color: Colors.black26, size: 15.0),
                    SizedBox(width: 4.0),
                    Text(
                      "8 MINS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 8.0,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                dataModel?.itemTitle ?? "",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0, color: Colors.black),
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2.0),
              Text(
                dataModel?.quantity ?? "",
                style: const TextStyle(
                  fontSize: 9.0,
                  fontWeight: FontWeight.w700,
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
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "₹${dataModel?.originalPrice}",
                        style: const TextStyle(
                          fontSize: 10.0,
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
                      border: Border.all(color: Colors.green),
                    ),
                    child: Text(AppConstants.add, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0, color: Colors.green),),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
