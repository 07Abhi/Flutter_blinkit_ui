import 'package:blinkit_home/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/address_list_provider.dart';
import 'address_item_widget.dart';

class AddressListingWidget extends StatelessWidget {
  const AddressListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = AddressListProvider.of(context);
    if (provider.addressDataList.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppConstants.yourSavedContacts,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              itemBuilder: (context, index) {
                return AddressItemWidget(
                  dataModel: provider.addressDataList[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 6.0);
              },
              itemCount: provider.addressDataList.length,
            ),
          )
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
