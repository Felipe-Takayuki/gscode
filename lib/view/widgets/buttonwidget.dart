
import 'package:flutter/material.dart';

class ButtonWIdget extends StatefulWidget {
  const ButtonWIdget({super.key, required this.title, required this.widthandheight, required this.icon,  this.route});
  final String title; 
  final double widthandheight;
  final dynamic icon;
  final dynamic? route;
  @override
  State<ButtonWIdget> createState() => _ButtonWIdgetState();
}

class _ButtonWIdgetState extends State<ButtonWIdget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.route),
                );
      },
      child: Container(
        color:const Color.fromRGBO(217, 217, 217, 1),
        width: widget.widthandheight,
        height: widget.widthandheight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.title, style: TextStyle(fontSize: widget.widthandheight * 12/100, fontWeight: FontWeight.bold),), 
            Icon(widget.icon, size:widget.widthandheight * 40/100 ,)
          ],
        ),
      ),
    );
  }
}
//rgba(217, 217, 217, 1)