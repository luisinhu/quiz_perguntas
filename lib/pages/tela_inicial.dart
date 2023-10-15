
import 'package:flutter/material.dart';
import 'package:quiz/pages/home_page.dart';

class tela_daniel extends StatefulWidget {
  const tela_daniel({super.key});

  @override
  State<tela_daniel> createState() => _tela_danielState();
}

class _tela_danielState extends State<tela_daniel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter, 
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 51, 255, 238),
                  Color.fromARGB(255, 0, 255, 128)
                ],
              )
            ),
          ),
          Column(
            children: [
              SizedBox(height: 90,),
              Center(child: Image.asset("assets/imagens/logocartoon.png",
              height: 165,)),
              SizedBox(height: 268),
              SizedBox(
                width: 190,
                child: Padding(padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => HomePage()));
              },style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(19),
                backgroundColor: Color.fromARGB(255, 6, 94, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
                )
              ), 
              child: Text("Jogar",
              style: TextStyle(color: Colors.white),)),
              ),
              
              )
            ],
          ),
        ],
      ) ,
    );
  }
}