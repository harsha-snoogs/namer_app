import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({ Key? key }) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 1, color: Colors.grey.shade200))
      ),
      width: 80,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:80.0),
                  child: GestureDetector( 
                    child: Icon(Icons.menu, color: Colors.grey.shade400),
                    onTap: () => Scaffold.of(context).openDrawer(),
                    ),
                ), 
                Padding(
                  padding: const EdgeInsets.only(bottom:50.0),
                  child: GestureDetector(child: Icon(Icons.window_outlined, color: Colors.grey.shade400),
                  onTap: () => print("hi"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:50.0),
                  child: Icon(Icons.work_outline_rounded, color: Colors.grey.shade400),
                ),
                Padding(
                 padding: const EdgeInsets.only(bottom:50.0),
                  child: Icon(Icons.notifications_none_outlined, color: Colors.grey.shade400),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:50.0),
                  child: Icon(Icons.person_outline_rounded, color: Colors.grey.shade400),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:50.0),
                  child: Icon(Icons.settings_outlined, color: Colors.grey.shade400),
                ),
              ],
            ),
          ),
      ),
      );
  }
}