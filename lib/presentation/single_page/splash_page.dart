import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    context.read<AuthBloc>().add(AuthEvent.initial());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          AutoRouter.of(context).replace(MainRoute());
        } else {
          AutoRouter.of(context).replace(LandingRegisterRoute());
        }
      },
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/logo.png",
              color: ColorConstant.whiteColor,
              width: UIHelper.setSp(200),
              height: UIHelper.setSp(200),
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
