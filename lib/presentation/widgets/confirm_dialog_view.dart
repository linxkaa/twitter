import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class ConfirmDialogView extends StatefulWidget {
  final String? body;
  final VoidCallback? onTap;
  const ConfirmDialogView({
    Key? key,
    this.body,
    this.onTap,
  }) : super(key: key);

  @override
  _LogoutDialogState createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<ConfirmDialogView> {
  @override
  Widget build(BuildContext context) {
    return NewDialog(widget: widget);
  }
}

class NewDialog extends StatelessWidget {
  const NewDialog({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ConfirmDialogView widget;

  @override
  Widget build(BuildContext context) {
    final Widget _headerWidget = Row(
      children: <Widget>[
        Icon(
          Icons.help_outline,
          color: Colors.white,
        ),
        UIHelper.horizontalSpace(20),
        Text(
          "Warning!",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );

    final Widget _messageWidget = Text(
      widget.body ?? "Are you sure you want to quit?",
      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.blueGrey),
    );
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              padding: UIHelper.padAll(40),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  color: ColorConstant.primary),
              child: _headerWidget),
          UIHelper.verticalSpace(30),
          Container(
            padding: UIHelper.padAll(40),
            child: _messageWidget,
          ),
          UIHelper.verticalSpace(30),
          Divider(
            color: Theme.of(context).iconTheme.color,
            height: 0.4,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Tidak", style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.blueGrey)),
                ),
              ),
              Container(height: UIHelper.setHeight(110), width: 0.4, color: Colors.blueGrey),
              Expanded(
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: widget.onTap ??
                      () {
                        SystemNavigator.pop();
                      },
                  child: Text(
                    "Ya",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorConstant.primary),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
