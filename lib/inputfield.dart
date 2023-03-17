import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  const Inputfield({ Key? key }) : super(key: key);

  @override
  _InputfieldState createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: TextField(),
    );
  }
}

