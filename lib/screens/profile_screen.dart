import 'package:blinkit_home/constant.dart';
import 'package:blinkit_home/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/profile_icon_value_widgets.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = "/profile_screen";

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileProvider>(
      create: (_) => ProfileProvider(),
      lazy: false,
      builder: (BuildContext insideContext, __) {
        var provider = ProfileProvider.of(insideContext);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          AppConstants.profile,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    AppConstants.yourAccount,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24.0,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  const Text(
                    "1234567890",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileVerticalIconValueWidget(iconName: Icons.wallet, value: AppConstants.wallet),
                        ProfileVerticalIconValueWidget(iconName: Icons.chat, value: AppConstants.support),
                        ProfileVerticalIconValueWidget(iconName: Icons.payment, value: AppConstants.payments),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConstants.yourInformation,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ProfileHorizontalIconValueWidget(
                            iconName: provider.infoList[index]["icon"],
                            value: provider.infoList[index]["label"],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 12.0);
                        },
                        itemCount: provider.infoList.length,
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConstants.otherInformation,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ProfileHorizontalIconValueWidget(
                            iconName: provider.otherInfo[index]["icon"],
                            value: provider.otherInfo[index]["label"],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 12.0);
                        },
                        itemCount: provider.otherInfo.length,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
