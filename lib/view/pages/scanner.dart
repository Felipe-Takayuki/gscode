import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_codegs/view/widgets/appbar_func.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();

 
}

class _ScannerPageState extends State<ScannerPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String value = "";

  void _onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((scanData) {
      setState(() => result = scanData); 
    });
  }

  @override

   void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void readQr() async {
    if (result != null) {
      controller!.pauseCamera();
      log("${result!.code}");
      value = "${result!.code}";
      controller!.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
      readQr();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
         body: Stack(
           children: [
             QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.white,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 250,
              ),
              
        ),
        Center(
          child: Column(
            children: [
              AppBarFuncWidget(icon: Icons.camera_alt, size: height, title: "scanner"),
              const Spacer(),
              Text("qrcode: $value", style: TextStyle(color: const Color.fromARGB(255, 141, 160, 18), fontSize: height * 3/100),),
              const Spacer(flex: 4,),
              TextButton(onPressed: (){
                Navigator.of(context).pop(MaterialPageRoute(builder: (context) => ScannerPage() ));
              }, child: const Text("voltar a tela inicial", style: TextStyle(color: Colors.green),)),
            ],
          ),
        )
        
           ],
         ),
      ),
    );
  }
@override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
      // Column(
      //   children: [
      //     AppBarFuncWidget(icon: Icons.camera_alt_sharp, size: height, title: "scanner"),
      //     Spacer(),
      //     Text("informação do qrcode", style: TextStyle(color:const Color.fromRGBO(105, 103, 36, 1), fontWeight: FontWeight.bold, fontSize: height * 3/100),),//rgba(105, 103, 36, 1)
          
      //     Spacer(flex: 2,),
      //     GestureDetector(
      //       onTap:(){},
      //       child: Container(
      //         height: height * 20/100,
      //         width: width * 30/100,
      //         decoration:const BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1), borderRadius: BorderRadius.all(Radius.circular(20)) ),//rgba(217, 217, 217, 1)
      //         child: Icon(Icons.camera_alt, color: Colors.black, size: height * 6/100,),
      //       ),
      //     ), 
      //     Spacer()
      //   ],
      // ),
    
  
