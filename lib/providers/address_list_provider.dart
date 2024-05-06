import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/saved_address_data.dart';
import '../models/address_response.dart';

class AddressListProvider extends ChangeNotifier {
  static AddressListProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<AddressListProvider>(context, listen: listen);
  }

  List<AddressDetailsResponse> addressDataList = [];
  AddressDetailsResponse? selectedAddress;

  AddressListProvider() {
    AddressResponse? data = AddressResponse.fromJson(savedAddress);
    addressDataList = data.addressDataList ?? [];
    if (addressDataList.isNotEmpty) {
      selectedAddress = addressDataList.first;
    }
    notifyListeners();
  }

  onAddressChange(AddressDetailsResponse? dataModel) {
    selectedAddress= dataModel;
    notifyListeners();
  }
}
