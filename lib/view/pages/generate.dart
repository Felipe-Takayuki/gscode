import 'package:flutter/material.dart';
import 'package:qr_codegs/view/widgets/appbar_func.dart';
import 'package:qr_codegs/view/widgets/textformwidget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:developer';
class GeneratePage extends StatefulWidget {
  const GeneratePage({super.key});

  @override
  State<GeneratePage> createState() => _GeneratePageState();
}
class _GeneratePageState extends State<GeneratePage> {
  final TextEditingController linkcontroller = TextEditingController();
  String a = "";

  @override
  Widget build(BuildContext context) {
      log("generate");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // ignore: avoid_unnecessary_containers
        body: Container(
          color: Colors.white,
           child: SingleChildScrollView(
            reverse: true,
            
             child: Column(
              children: [
               AppBarFuncWidget(icon: Icons.qr_code, size: height, title: "gerador",),
                SizedBox(height: height * 10/100,),
                 Text("o seu qrcode", style: TextStyle(color: const Color.fromRGBO(105, 103, 36, 1), fontSize: height * 3/100 ),),//rgba(105, 103, 36, 1)
                QrImageView(data:a , size: height * 30/100 , backgroundColor: const Color.fromRGBO(217, 217, 217, 1), ),
               SizedBox(height: height * 10/100,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [

                    SizedBox(width: width * 79/100 , height: height * 8/100,
                    child: TextFormWidget(controller: linkcontroller)),

                    GestureDetector(onTap: () {
                      setState(() {
                        linkcontroller.text;
                      });
                      a= linkcontroller.text;
                      log("info: $a");
                      linkcontroller.clear();
                    },
                    child: Center(
                      child: Container(
                        decoration:  BoxDecoration(
                         shape: BoxShape.circle,
                         color: const Color.fromRGBO(190, 187, 187, 1),
                         border: Border.all(),
                        ),
                        height:height * 8/100,
                        width: width * 19/100,
                        child: Icon(Icons.send, size: height * 5/100 ),
                      ),
                    ),)
                  ],
           
                )
           
              ],
             ),
           ),
        ),
      ),
    );

  }
}