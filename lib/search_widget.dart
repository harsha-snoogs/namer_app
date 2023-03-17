import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'display_cards.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({ Key? key }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 250,
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(width: 1, color: Colors.grey.shade200)
        )
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade200)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:25.0, top: 30.0, bottom: 15.0),
              child: Row(
                children: [
                  Text("Jobs"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8),
                    child: SizedBox(
                      width: 130,
                      child: TextField(
                        decoration:null,
                        textAlignVertical: TextAlignVertical.center,
                      )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons.add_box, color: Colors.blue,size: 30),
                  )
                  
                ],
              ),
            ),
          ),
          DisplayCards(),
        ],
      ),
    ),
    );
  }
}