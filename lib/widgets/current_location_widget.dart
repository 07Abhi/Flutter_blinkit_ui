import 'package:blinkit_home/constant.dart';
import 'package:flutter/material.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.my_location_outlined,
                size: 20.0,
                color: Colors.green,
              ),
              SizedBox(width: 4.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppConstants.usingYourCurrentLocation,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    "Current Location Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: Colors.black87,
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18.0,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
