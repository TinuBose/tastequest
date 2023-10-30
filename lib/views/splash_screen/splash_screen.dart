import 'package:get/get.dart';
import 'package:tastequest/consts/consts.dart';
import 'package:tastequest/views/auth_screen/login_screen.dart';
import 'package:tastequest/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen

  changeScreenn() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreenn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
            ),
            Image.asset(
              icSplashBg,
              width: 300,
            ),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
          ],
        ),
      ),
    );
  }
}
