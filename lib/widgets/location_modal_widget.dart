import 'package:blinkit_home/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'address_listing_widget.dart';
import 'current_location_widget.dart';
import 'import_contact_from_zomato_widget.dart';
import 'location_searchbar_widget.dart';

class LocationModalWidget extends StatelessWidget {
  const LocationModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      decoration: const BoxDecoration(
        color: Color(0xfff0f8ff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppConstants.selectLocation,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          LocationSearchBarWidget(),
          const SizedBox(height: 10.0),
          const CurrentLocationWidget(),
          const SizedBox(height: 10.0),
          const ImportContactFromZomato(),
          const SizedBox(height: 10.0),
          const Expanded(
            child: AddressListingWidget(),
          ),
        ],
      ),
    );
  }
}
