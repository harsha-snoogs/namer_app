import 'package:flutter/material.dart';
import 'package:namer_app/xx.dart';
import 'package:provider/provider.dart';
import 'side_bar.dart';
import 'search_widget.dart';
import 'content.dart';
//import 'package:flutter_sidebar/flutter_sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool isDrawerExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SizedBox(
        child: Row(
          children: [
            SideBar(),
            SearchWidget(),
            Expanded(child: Content()),
          ],
        ),      
        ),
    );
  }
}
