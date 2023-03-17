import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class ReorderableCards extends StatefulWidget {
  final int value;
  ReorderableCards({required this.value});
  @override
  _ReorderableCardsState createState() => _ReorderableCardsState();
}

class _ReorderableCardsState extends State<ReorderableCards> {
  ScrollController _controller = ScrollController();

  List<Widget> skillCards(var skillData) {
    var mapepedData = skillData
        .map((skill) => Padding(
              padding: const EdgeInsets.only(right: 4.0, left: 4.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left:5.0, right:5.0),
                  child: Text(skill.toString()),
                )),
              ),
            ))
        .toList();
    List<Widget> myCards = mapepedData.whereType<Padding>().toList();
    return myCards;
  }

  List<Widget> cardData() {
    var values = widget.value;
    var newData = [
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
       {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
       {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Rohit",
        "image": "web/icons/rohit.jpg",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      }
    ];
    var selectedData = [
      {
        "name": "Harsha",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Harsha",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Harsha",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      }
    ];
    var approvedData = [
      {
        "name": "Hemanth",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Hemanth",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      },
      {
        "name": "Hemanth",
        "image": "https://picsum.photos/200/300",
        "role": "cloud Tech lead",
        "skills": ["Engineer", "CCP", "Azure"]
      }
    ];
    var newDataTobeMapped = values == 0
        ? newData
        : values == 1
            ? selectedData
            : approvedData;
    List<Widget> data = newDataTobeMapped
        .map((e) => Container(
            height: 125,
            key: ValueKey("0"),
            // width: 275,
            padding: EdgeInsets.all(10),
            child: Card(

              elevation: 10,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width:10.0,),
                      CircleAvatar(
                        radius: 20, // Image radius
                        backgroundImage: NetworkImage(e['image'].toString()),
                      ),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text(e["name"].toString()),
                          Text(e["role"].toString()),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: skillCards(e["skills"]),
                  )
                ],
              ),
            )))
        .toList();

    return data;
  }

  @override
  Widget build(BuildContext context) {
    void onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = cardData().removeAt(oldIndex);
        cardData().insert(newIndex, row);
      });
    }

    return SizedBox(
      child: Card(
        child: ReorderableColumn(
          scrollController: _controller,
          onReorder: onReorder,
          children: cardData(),
        ),
      ),
    );
  }
}
