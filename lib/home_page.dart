// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   var num1=0,num2=0,sum=0;
//   final TextEditingController t1=new TextEditingController(text:"0");
//   final TextEditingController t2=new TextEditingController(text:"0");

//   void doAdd(){
//     setState(() {
//       num1=int.parse(t1.text);
//       num2=int.parse(t2.text);
//       sum=num1+num2;
//     });
//   }
//   void doSub(){
//     setState(() {
//       num1=int.parse(t1.text);
//       num2=int.parse(t2.text);
//       sum=num1-num2;
//     });
//   }
// void doMul(){
//     setState(() {
//       num1=int.parse(t1.text);
//       num2=int.parse(t2.text);
//       sum=num1*num2;
//     });
//   }
// void doDiv(){
//     setState(() {
//       num1=int.parse(t1.text);
//       num2=int.parse(t2.text);
//       sum=num1~/num2;
//     });
//   }

// void doClear(){
//   setState(() {
//     t1.text="0";
//     t2.text="0";
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title:Text("Calculator",
//         //textAlign: TextAlign.center,
//         ),
    
//         backgroundColor: Colors.red,
//       ),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(40.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Output : $sum ",
//               style: TextStyle(
//                 color: Colors.purple,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30.0,
//               ),
//               ),
//               TextField(
//                 controller: t1,
//                 keyboardType:TextInputType.number ,
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: "Enter First Number",
//                 ),
//               ),

//               TextField(
//                 controller: t2,
//                 keyboardType: TextInputType.number,
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: "Enter Second Number",
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     MaterialButton(
//                       onPressed:doAdd,
//                       color: Colors.greenAccent,
//                       child: Text("+",
//                       style: TextStyle(
//                         fontSize: 25.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                     ),
//                     MaterialButton(
//                       onPressed:doSub,
//                       color: Colors.greenAccent,
//                       child: Text("-",
//                       style: TextStyle(
//                         fontSize: 35.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     MaterialButton(
//                       onPressed:doMul,
//                       color: Colors.greenAccent,
//                       child: Text("*",
//                       style: TextStyle(
//                         fontSize: 25.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                     ),
//                     MaterialButton(
//                       onPressed:doDiv,
//                       color: Colors.greenAccent,
//                       child: Text("/",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                      MaterialButton(
//                       onPressed:doClear,
//                       color: Colors.greenAccent,
//                       child: Text(
//                         "CLEAR",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                     ),
                    
//                   ],),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }