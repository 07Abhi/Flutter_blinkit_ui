import 'package:blinkit_home/providers/address_list_provider.dart';
import 'package:flutter/material.dart';

import '../models/address_response.dart';

class AddressItemWidget extends StatelessWidget {
  final AddressDetailsResponse? dataModel;

  const AddressItemWidget({
    super.key,
    this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    var addressProvider = AddressListProvider.of(context);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        addressProvider.onAddressChange(dataModel);
        Navigator.of(context).pop();
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 35.0,
              width: 35.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0), color: const Color(0xffD3D3D3).withOpacity(0.2)),
              child: const Icon(
                Icons.home,
                size: 25.0,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (dataModel?.name != null)
                        Text(
                          dataModel!.name!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                        ),
                      if (dataModel?.distanceFromCenter != null) ...[
                        const SizedBox(width: 4.0),
                        Text(
                          "${dataModel!.distanceFromCenter} km away",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ],
                  ),
                  if (dataModel?.address != null) ...[
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        const SizedBox.shrink(),
                        Expanded(
                          child: Text(
                            dataModel!.address!,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Container(
                      height: 20.0,
                      width: 20.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xffD3D3D3).withOpacity(0.2),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: const Icon(
                        Icons.share,
                        size: 10.0,
                        color: Colors.green,
                      ),
                    )
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
