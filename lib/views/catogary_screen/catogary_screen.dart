import 'package:get/get.dart';
import 'package:tastequest/consts/consts.dart';
import 'package:tastequest/consts/lists.dart';
import 'package:tastequest/views/catogary_screen/catogary_details.dart';
import 'package:tastequest/widgets_common/bg_widget.dart';

class CatogaryScreen extends StatelessWidget {
  const CatogaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: catogaries.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      catogariesImages[index],
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    catogariesList[index]
                        .text
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .make(),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .make()
                    .onTap(() {
                  Get.to(() => catogaryDetails(title: catogariesList[index]));
                });
              }),
        ),
      ),
    );
  }
}
