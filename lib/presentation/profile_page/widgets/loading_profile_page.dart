part of '../profile_page.dart';

class _LoadingProfilePageWidget extends StatelessWidget {
  const _LoadingProfilePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        ShimmerLoading(
          height: UIHelper.setSp(400),
          width: double.infinity,
        ),
        Positioned(
          top: UIHelper.setSp(300),
          child: Container(
            width: UIHelper.mediaWidth(context, 1),
            padding: UIHelper.padSymmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                      child: ShimmerLoading(
                        width: UIHelper.setSp(200),
                        height: UIHelper.setSp(200),
                      ),
                    ),
                    UIHelper.verticalSpace(50),
                    ShimmerLoading(
                      width: UIHelper.setSp(400),
                      height: UIHelper.setSp(40),
                    ),
                    UIHelper.verticalSpace(50),
                    ShimmerLoading(
                      width: UIHelper.setSp(800),
                      height: UIHelper.setSp(40),
                    ),
                  ],
                ),
                Column(
                  children: [
                    UIHelper.verticalSpace(120),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                      child: ShimmerLoading(
                        width: UIHelper.setSp(200),
                        height: UIHelper.setSp(100),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
