import 'package:flutter/material.dart';
import 'package:namer_app/reorderable_cards.dart';

class Content extends StatefulWidget {
 Content({ Key? key }) : super(key: key);

  @override
  ContentState createState() => ContentState();
}

class ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          children: [
            Topbar(),
            Expanded(child: Center())
          ],
        ),
    );
  }
}

class Topbar extends StatefulWidget {
  const Topbar({ Key? key }) : super(key: key);

  @override
  TopbarState createState() => TopbarState();
}

class TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border
        (
          bottom: BorderSide(width: 1, color: Colors.grey.shade200),
        )
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text("Cloud Engineering"),
                Text("Your Kanban")
              ]
              ),
          ),
        ],
      ),

    );
  }
}


class Center extends StatefulWidget {
  const Center({ Key? key }) : super(key: key);

  @override
  CenterState createState() => CenterState();
}

class CenterState extends State<Center> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                child: Column(
                  children: [
                    TitleCard(),
                    SizedBox(height: 15),
                    Expanded(child: ReorderableCards(value: 0,)),
                  ],
                ),
              ),
            ),
           SizedBox(width: 80),
            Expanded(
              child: Column(
                children: [
                  TitleCard(),
                  SizedBox(height: 15),
                  Expanded(child: ReorderableCards(value:1)),
                ],
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: Column(
                children: [
                  TitleCard(),
                  SizedBox(height: 15),
                  Expanded(child: ReorderableCards(value:2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
const TitleCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
       width: 450,
       height: 50,
      child: Card(
        color: Colors.blue.shade600,
      ),
    );
  }
}