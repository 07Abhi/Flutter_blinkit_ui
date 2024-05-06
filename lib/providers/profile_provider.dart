import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileProvider extends ChangeNotifier {
  static ProfileProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<ProfileProvider>(context, listen: listen);
  }

  final List<Map<String, dynamic>> infoList = [
    {
      "label": "Your Orders",
      "icon": Icons.shopify,
    },
    {
      "label": "Address Book",
      "icon": Icons.contact_page,
    },
    {
      "label": "Collected Coupons",
      "icon": Icons.percent_sharp,
    }
  ];
  final List<Map<String, dynamic>> otherInfo = [
    {
      "label": "Share the app",
      "icon": Icons.share,
    },
    {
      "label": "About us",
      "icon": Icons.info_outline,
    },
    {
      "label": "Get Feeding India Receipt",
      "icon": Icons.food_bank_outlined,
    },
    {
      "label": "Account Privacy",
      "icon": Icons.privacy_tip_sharp,
    },
    {
      "label": "Notification Preferences",
      "icon": Icons.notification_important,
    },
    {
      "label": "Log Out",
      "icon": Icons.logout,
    }
  ];
}
