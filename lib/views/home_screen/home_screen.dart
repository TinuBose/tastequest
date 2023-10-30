import 'package:tastequest/consts/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: whiteColor,
                hintText: 
              ),
            ),
          )
        ],
      )),
    );
  }
}
