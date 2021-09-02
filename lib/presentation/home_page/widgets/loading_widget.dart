part of '../home_page.dart';

class _LoadingWidgetHomePage extends StatelessWidget {
  const _LoadingWidgetHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, idx) {
          return Padding(
            padding: UIHelper.padAll(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                  child: ShimmerLoading(
                    width: UIHelper.setSp(150),
                    height: UIHelper.setSp(150),
                  ),
                ),
                UIHelper.horizontalSpace(20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerLoading(
                        width: UIHelper.setSp(200),
                        height: UIHelper.setSp(30),
                      ),
                      UIHelper.verticalSpace(20),
                      ShimmerLoading(
                        width: UIHelper.setSp(400),
                        height: UIHelper.setSp(30),
                      ),
                      UIHelper.verticalSpace(20),
                      ShimmerLoading(
                        width: UIHelper.mediaWidth(context, 1),
                        height: UIHelper.setSp(200),
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(30),
              ],
            ),
          );
        });
  }
}
