import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class TwitterLoggedOutScaffold extends StatelessWidget {
  final Widget body;
  final bool needBackIcon;
  const TwitterLoggedOutScaffold({
    Key? key,
    required this.body,
    this.needBackIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whiteColor,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: needBackIcon
            ? InkWell(
                onTap: () => AutoRouter.of(context).pop(),
                child: Icon(Icons.arrow_back, color: ColorConstant.black),
              )
            : SizedBox.shrink(),
        title: Image.asset(
          "assets/image/logo.png",
          width: UIHelper.setSp(60),
          height: UIHelper.setSp(60),
        ),
      ),
      body: body,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
