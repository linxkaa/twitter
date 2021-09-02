import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';

class UIHelper {
  UIHelper._();
  static BoxShadow defaultBoxShadow = BoxShadow(
    offset: Offset(3, 3),
    blurRadius: 5,
    spreadRadius: 2,
    color: ColorConstant.grey.withOpacity(0.3),
  );
  static double setHeight(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double setSp(double size) {
    return size.sp;
  }

  static double setWidth(double width) {
    return ScreenUtil().setWidth(width);
  }

  static Widget loading({Color? color, double? width, double? height}) {
    return SizedBox(
      width: width ?? UIHelper.setSp(80),
      height: height ?? UIHelper.setSp(80),
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(color == null ? Colors.green : color),
        ),
      ),
    );
  }

  static EdgeInsetsGeometry padSymmetric(
      {double? horizontal, double? vertical, double? cwTop, double? cwBottom, double? cwLeft, double? cwRight}) {
    return EdgeInsets.symmetric(
            vertical: UIHelper.setHeight(vertical ?? 0), horizontal: UIHelper.setWidth(horizontal ?? 0))
        .copyWith(
            top: cwTop ?? UIHelper.setHeight(vertical ?? 0),
            bottom: cwBottom ?? UIHelper.setHeight(vertical ?? 0),
            right: cwRight ?? UIHelper.setWidth(horizontal ?? 0),
            left: cwLeft ?? UIHelper.setWidth(horizontal ?? 0));
  }

  static EdgeInsetsGeometry padAll(double size, {double? cwTop, double? cwBottom, double? cwLeft, double? cwRight}) {
    return EdgeInsets.all(UIHelper.setHeight(size)).copyWith(
        top: cwTop ?? UIHelper.setHeight(size),
        bottom: cwBottom ?? UIHelper.setHeight(size),
        right: cwRight ?? UIHelper.setHeight(size),
        left: cwLeft ?? UIHelper.setHeight(size));
  }

  static EdgeInsetsGeometry padLTRB(double left, double top, double right, double bottom,
      {double? cwTop, double? cwBottom, double? cwLeft, double? cwRight}) {
    return EdgeInsets.fromLTRB(
            UIHelper.setWidth(left), UIHelper.setHeight(top), UIHelper.setWidth(right), UIHelper.setHeight(bottom))
        .copyWith(
            top: cwTop ?? UIHelper.setHeight(top),
            bottom: cwBottom ?? UIHelper.setHeight(bottom),
            right: cwRight ?? UIHelper.setWidth(right),
            left: cwLeft ?? UIHelper.setWidth(left));
  }

  static Widget loadingWidget({double? height, Color? color, Color? loadingColor}) {
    return Container(
      height: height ?? UIHelper.setHeight(800),
      color: color ?? ColorConstant.whiteColor,
      child: Center(child: UIHelper.loading(color: loadingColor)),
    );
  }

  static Widget emptyCaseWidget(BuildContext context, {required String emptyText, double? height}) {
    return Container(
      padding: UIHelper.padSymmetric(vertical: 50, horizontal: 30),
      height: height,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              emptyText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            UIHelper.verticalSpace(40),
          ],
        ),
      ),
    );
  }

  static double setFont(double font) {
    return ScreenUtil().setSp(font);
  }

  static double mediaHeight(BuildContext context, double scale) {
    return MediaQuery.of(context).size.height * scale;
  }

  static double mediaWidth(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * scale;
  }

  static Widget verticalSpace(double height) {
    return SizedBox(height: setHeight(height));
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(width: setWidth(width));
  }

  static Widget divider({Color? color, double? thickness, double? height}) {
    return Divider(
      color: color ?? ColorConstant.lightGrey,
      thickness: thickness ?? 1,
      height: height,
    );
  }

  static void showToast(String message, {bool isSuccess = false}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isSuccess ? Colors.green : Colors.red,
        textColor: Colors.white,
        fontSize: UIHelper.setFont(30));
  }
}

class EmptyTemplate extends StatelessWidget {
  final bool isInitialState;
  final String emptyText;
  const EmptyTemplate({
    Key? key,
    this.isInitialState = false,
    required this.emptyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isInitialState
        ? Align(
            alignment: Alignment.center,
            child: Container(
              padding: UIHelper.padSymmetric(vertical: 500, horizontal: 200),
              child: Column(
                children: [
                  Icon(
                    Icons.screen_search_desktop_outlined,
                    color: ColorConstant.primary,
                    size: UIHelper.setFont(200),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          emptyText,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Container(
              padding: UIHelper.padSymmetric(vertical: 40),
              child: Text(
                emptyText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption!.copyWith(),
              ),
            ),
          );
  }
}

class ApiTemplateErrorPage extends StatelessWidget {
  final Function()? onRefreshCallback;
  final String? exception;
  final Color? color;

  const ApiTemplateErrorPage({
    this.onRefreshCallback,
    this.color,
    required this.exception,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIHelper.padAll(60),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              exception ?? "",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: color ?? ColorConstant.black),
            ),
            UIHelper.verticalSpace(40),
            onRefreshCallback == null
                ? SizedBox.shrink()
                : OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: color ?? ColorConstant.primary),
                      primary: Colors.white,
                    ),
                    onPressed: onRefreshCallback,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.refresh,
                          color: color ?? ColorConstant.black,
                        ),
                        UIHelper.horizontalSpace(20),
                        Text("Refresh",
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: color ?? ColorConstant.black))
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
