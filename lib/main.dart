import 'package:get/get.dart';
import 'package:tastequest/consts/consts.dart';
import 'package:tastequest/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            //to set app bar icons color
            backgroundColor: Colors.transparent),
        iconTheme: const IconThemeData(
          color: darkFontGrey,
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
