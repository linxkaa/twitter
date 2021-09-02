import 'package:flutter/material.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class TwitterButton extends StatelessWidget {
  const TwitterButton({
    Key? key,
    required this.width,
    this.isBgBlue = true,
    this.needIcon = false,
    this.enabled = true,
    this.needBorder = true,
    required this.title,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.color = Colors.white,
    this.isIconImage = false,
    this.onlyIcon = false,
  }) : super(key: key);

  final double width;
  final bool isIconImage;
  final bool enabled;
  final bool needBorder;
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isBgBlue;
  final bool needIcon;
  final dynamic icon;

  final Color color;
  final bool onlyIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: ElevatedButton(
          onPressed: isLoading
              ? null
              : enabled
                  ? onPressed
                  : null,
          style: ElevatedButton.styleFrom(
            padding: UIHelper.padAll(30),
            elevation: 0,
            side: BorderSide(
              width: 1.0,
              color: enabled
                  ? needBorder
                      ? ColorConstant.primary
                      : Colors.transparent
                  : Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
            ),
            primary: isBgBlue ? ColorConstant.primary : ColorConstant.whiteColor,
            onPrimary: isBgBlue ? ColorConstant.whiteColor : ColorConstant.primary,
          ),
          child: isLoading
              ? UIHelper.loading(
                  color: isBgBlue ? ColorConstant.whiteColor : ColorConstant.primary,
                  width: UIHelper.setSp(50),
                  height: UIHelper.setSp(50),
                )
              : onlyIcon
                  ? Center(
                      child: Icon(icon, color: color, size: UIHelper.setSp(60)),
                    )
                  : !needIcon
                      ? Center(
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: isBgBlue ? ColorConstant.whiteColor : ColorConstant.primary),
                          ),
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  isIconImage
                                      ? Image.asset(
                                          icon,
                                          width: UIHelper.setSp(35),
                                          height: UIHelper.setSp(35),
                                        )
                                      : Icon(icon, color: color, size: UIHelper.setSp(35)),
                                  UIHelper.horizontalSpace(10),
                                  Text(
                                    title,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .button!
                                        .copyWith(color: isBgBlue ? ColorConstant.whiteColor : ColorConstant.primary),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
        ),
      ),
    );
  }
}

class InactiveButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;

  final double radius;
  const InactiveButton({required this.title, this.width = double.infinity, this.radius = 10, this.height = 120});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(radius),
      ),
      width: UIHelper.setHeight(width),
      height: UIHelper.setHeight(height),
      padding: UIHelper.padAll(20),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.grey,
              ),
        ),
      ),
    );
  }
}
