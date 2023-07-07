import 'package:flutter/material.dart';

class AppBarFuncWidget extends StatefulWidget {
  const AppBarFuncWidget({super.key, required this.icon, required this.size, required this.title});
  final dynamic icon;
  final double size;
  final String title;

  @override
  State<AppBarFuncWidget> createState() => _AppBarFuncWidgetState();
}

class _AppBarFuncWidgetState extends State<AppBarFuncWidget> {
  @override
  Widget build(BuildContext context) {
    return   Row(
                  children: [
                    Icon(Icons.qr_code, size:widget.size * 10/100, color:const Color.fromRGBO(59, 103, 109, 1) ,), //rgba(59, 103, 109, 1)
                     Text(widget.title, style: TextStyle(color: const Color.fromRGBO(59, 103, 109, 1), fontSize: widget.size * 3/100, fontWeight: FontWeight.bold), )
                  ],
                );
  }
}