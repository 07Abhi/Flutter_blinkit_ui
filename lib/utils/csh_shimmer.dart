
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CshShimmer extends StatelessWidget {
  final Widget? child;
  final bool? show;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final double? radius;

  const CshShimmer({
    Key? key,
    this.child,
    this.show = true,
    this.width,
    this.height,
    this.padding,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return show!
        ? Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Shimmer.fromColors(
        baseColor: theme.canvasColor,
        highlightColor: theme.dividerColor.withAlpha(100),
        child: Container(
          height: height,
          width: width,
          child: child,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 0), color: theme.colorScheme.background),
        ),
      ),
    )
        : child ?? Container();
  }
}
