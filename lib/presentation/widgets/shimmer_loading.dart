import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart' as package;
import 'package:twitter/presentation/widgets/ui_helper.dart';

class ShimmerLoading extends StatefulWidget {
  const ShimmerLoading({
    Key? key,
    this.isLoading,
    this.width,
    this.height,
    this.child,
    this.margin,
    this.loadingWithoutChild = true,
  }) : super(key: key);

  final bool? isLoading;
  final bool loadingWithoutChild;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final double? width;
  final double? height;

  @override
  _ShimmerLoadingState createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  @override
  Widget build(BuildContext context) {
    if (!widget.loadingWithoutChild) {
      if (!widget.isLoading!) {
        return widget.child!;
      }

      return package.Shimmer.fromColors(
        period: Duration(microseconds: 10),
        baseColor: Colors.grey[50]!,
        highlightColor: Colors.grey[200]!,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(UIHelper.setSp(10))),
            color: Colors.white,
          ),
          margin: widget.margin,
          width: widget.width ?? double.infinity,
          height: widget.height,
        ),
      );
    }
    return package.Shimmer.fromColors(
      baseColor: Colors.grey[100]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        width: widget.width ?? double.infinity,
        margin: widget.margin,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(UIHelper.setSp(10))),
          color: Colors.white,
        ),
      ),
    );
  }
}
