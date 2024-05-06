import 'package:blinkit_home/constant.dart';
import 'package:flutter/material.dart';

class ImportContactFromZomato extends StatelessWidget {
  const ImportContactFromZomato({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
                width: 25.0,
                child: Image.asset(
                  "assets/icons/ic_zomato.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppConstants.importYourAddress,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    AppConstants.getYouAddDesc,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Text(
            AppConstants.import,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.green,
              fontSize: 10.0,
            ),
          )
        ],
      ),
    );
  }
}
