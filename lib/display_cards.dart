import 'package:flutter/material.dart';

class DisplayCards extends StatelessWidget {
  DisplayCards({Key? key}) : super(key: key);
   ScrollController _controller = ScrollController();
  var data = [
    "Manager",
    "UI/UX Designer",
    "Cloud Engineer",
    "Account Manager",
    "PHP Developer",
    "Mobile Developer"
  ];

  cardPrinting() {
    var dat = data.map((e) => Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: SizedBox(
              child: Container(  
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade200))
                ),
                  child: ListTile(title: Text(e),subtitle: Text('List item subtitle'),))),
        ));
    return dat.toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 587,
      child: ListView(
        controller: _controller,
        children: cardPrinting(),
      ),
    );
  }
}
