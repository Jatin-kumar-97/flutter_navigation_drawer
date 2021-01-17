import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigationdrawer/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(NavigationDrawer());
  });
}

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  FocusNode fn = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(fn);
      },
      child: MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        // showPerformanceOverlay: true,
        home: HomeScreen(),
      ),
    );
  }
}
