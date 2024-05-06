import 'package:blinkit_home/constant.dart';
import 'package:flutter/material.dart';

class HomeFabButton extends StatelessWidget {
  final Function()? onCallback;

  const HomeFabButton({
    super.key,
    this.onCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (onCallback != null) {
          onCallback!();
        }
      },
      child: Container(
        height: 75.0,
        width: 75.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.0,
              width: 30.0,
              child: Image.asset(
                "assets/icons/ic_category.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 5.0),
             Text(
              AppConstants.categories.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
