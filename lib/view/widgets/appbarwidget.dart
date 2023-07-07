import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key,});

  
  @override
  Size get preferredSize => const Size.fromHeight(90.0);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
    );
  }
}
