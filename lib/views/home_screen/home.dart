import 'package:get/get.dart';
import 'package:tastequest/consts/consts.dart';
import 'package:tastequest/controllers/home_controller.dart';
import 'package:tastequest/views/cart_screen/cart_screen.dart';
import 'package:tastequest/views/catogary_screen/catogary_screen.dart';
import 'package:tastequest/views/home_screen/home_screen.dart';
import 'package:tastequest/views/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var controller = Get.put(HomeController());

  var navbarIterm = [
    BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: catogaries),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart),
    BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account),
  ];
  var navBody = [
    const HomeScreen(),
    const CatogaryScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarIterm,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
