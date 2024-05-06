import 'package:blinkit_home/constant.dart';
import 'package:blinkit_home/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../models/address_response.dart';
import 'location_modal_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  final AddressDetailsResponse? addressData;

  const HomeHeaderWidget({
    super.key,
    this.addressData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isDismissible: true,
          isScrollControlled: true,
          builder: (context) {
            return const LocationModalWidget();
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppConstants.deliveryIn,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2.0),
               Text(
                "${addressData?.time??""} Minutes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black),
              ),
              const SizedBox(height: 2.0),
              Row(
                children: [
                  RichText(
                    maxLines: 40,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "${addressData?.name ?? ""} ",
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "- ${addressData?.address ?? ""}",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 20.0,
                  )
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProfileScreen.route);
            },
            child: const Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 40.0,
            ),
          )
        ],
      ),
    );
  }
}
