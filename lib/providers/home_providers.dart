import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/sample_data.dart';
import '../models/test.dart';

class HomeProvider extends ChangeNotifier {
  static HomeProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<HomeProvider>(context, listen: listen);
  }

  MasterDataResponse? masterData;

  HomeProvider() {
    masterData = MasterDataResponse.fromJson(jsonData);
    notifyListeners();
  }
}
