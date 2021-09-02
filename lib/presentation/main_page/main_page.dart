import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/bottom_nav_bar_bloc/bottom_nav_bar_cubit.dart';
import 'package:twitter/application/profile_bloc/profile_bloc.dart';
import 'package:twitter/application/update_tweet/update_tweet_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/constant/variable_constnt.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/presentation/home_page/home_page.dart';
import 'package:twitter/presentation/profile_page/profile_page.dart';
import 'package:twitter/presentation/widgets/confirm_dialog_view.dart';
import 'package:twitter/presentation/widgets/show_dialog_costum.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/twitter_text_form_field.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

part 'widgets/add_new_tweets_widget.dart';

class MainPage extends StatelessWidget {
  _onWillPop(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return ConfirmDialogView();
        });
  }

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: WillPopScope(
        onWillPop: () async {
          _onWillPop(context);
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: BlocBuilder<BottomNavBarCubit, BottomNavBarCubitState>(
            builder: (context, state) {
              return Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  iconSize: UIHelper.setFont(60),
                  elevation: 0,
                  backgroundColor: ColorConstant.whiteColor,
                  selectedFontSize: UIHelper.setFont(30),
                  unselectedFontSize: UIHelper.setFont(25),
                  type: BottomNavigationBarType.fixed,
                  items: VarConst.navigationBarItem,
                  currentIndex: context.watch<BottomNavBarCubit>().state.currentIndex,
                  selectedItemColor: state.page.maybeWhen(
                    orElse: () => ColorConstant.primary,
                  ),
                  unselectedItemColor: ColorConstant.grey,
                  onTap: (val) {
                    BlocProvider.of<BottomNavBarCubit>(context).changeTab(val);
                  },
                ),
                floatingActionButton: state.page.maybeMap(
                  orElse: () => null,
                  home: (_) => FloatingActionButton(
                    onPressed: () async {
                      await showDialogCostum(
                          context: context,
                          builder: (BuildContext context) {
                            return AddNewTweetsWidget();
                          },
                          useRootNavigator: true);
                    },
                    child: Icon(
                      FontAwesomeIcons.scroll,
                      size: UIHelper.setSp(40),
                    ),
                  ),
                ),
                body: state.page.map(
                  home: (_) => HomePage(),
                  notification: (_) => Container(),
                  search: (_) => Container(),
                  account: (_) => ProfilePage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
