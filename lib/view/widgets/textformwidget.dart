import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: widget.controller, decoration:const  InputDecoration(border:
                     OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40), ),
                     borderSide: BorderSide(color: Color.fromRGBO(88, 78, 78, 1))), 
                     disabledBorder:    OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40), ),
                     borderSide: BorderSide(color: Color.fromRGBO(88, 78, 78, 1))), 
                     enabledBorder:   OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40), ),
                     borderSide: BorderSide(color: Color.fromRGBO(88, 78, 78, 1))), 
                     focusedBorder:   OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40), ),
                     borderSide: BorderSide(color: Color.fromRGBO(88, 78, 78, 1))), 
                     errorBorder:   OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40), ),
                     borderSide: BorderSide(color: Color.fromRGBO(88, 78, 78, 1))), 
                     hintText: "Cole o seu link ",
                     hintStyle: TextStyle(fontWeight: FontWeight.bold)
                     ),);
  }
}