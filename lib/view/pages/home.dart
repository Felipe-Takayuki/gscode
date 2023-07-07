import 'package:flutter/material.dart';
import 'package:qr_codegs/view/pages/generate.dart';
import 'package:qr_codegs/view/pages/scanner.dart';
import 'package:qr_codegs/view/widgets/buttonwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  SafeArea(
      child: Scaffold(
        
        body: Container(
          color: Colors.white,
          child:  Column(
            children: [
              Container(height: height * 10/100, color: const Color.fromRGBO(59, 103, 109, 1)),
              Container(height: height * 10/100, color: const Color.fromRGBO(45, 115, 125, 1)),
             const Spacer(),
              Image.asset("assets/gscode.png"),
            const Spacer(),
              Container(
                height: height * 30/100,
                color: const Color.fromRGBO(59, 103, 109, 1),
                child: Stack(
                  children: [
                       Container(height: height * 10/100, color: const Color.fromARGB(255, 255, 255, 255)),
                   
                        Row(
                          children: [
                           const  Spacer(),
                            ButtonWIdget(title: "gerar", widthandheight: height * 25/100, icon: Icons.qr_code, route: const GeneratePage(),),
                           const Spacer(),
                            ButtonWIdget(title: "escanear", widthandheight: height * 25/100, icon: Icons.camera_alt, route:const ScannerPage() ,),
                            const Spacer()
                          ],
                        )
                   
                  ],
                ),
              ),
              
            ],
          )
        ),
      ),
    );
  }
}