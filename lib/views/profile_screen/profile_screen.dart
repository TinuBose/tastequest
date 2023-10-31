import 'package:tastequest/consts/consts.dart';
import 'package:tastequest/consts/lists.dart';
import 'package:tastequest/views/profile_screen/components/details_card.dart';
import 'package:tastequest/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                //edit profile button
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(() {}),

                //users detail section
                Row(
                  children: [
                    Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.heightBox,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "dummy user".text.fontFamily(semibold).white.make(),
                        5.heightBox,
                        "cuatomer@example.com".text.white.make(),
                      ],
                    )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).make(),
                    )
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(
                        count: "00",
                        title: "in your cart",
                        width: context.screenWidth / 3.2),
                    detailsCard(
                        count: "10",
                        title: "in your whishlist",
                        width: context.screenWidth / 3.2),
                    detailsCard(
                        count: "5",
                        title: "your orders",
                        width: context.screenWidth / 3.2),
                  ],
                ),
                40.heightBox,
                //buttons section
                ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: lightGrey,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Image.asset(
                              profileButtonsIcon[index],
                              width: 22,
                            ),
                            title: profileButtonsList[index]
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          );
                        },
                        itemCount: profileButtonsList.length)
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
