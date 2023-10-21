import 'package:flutter/material.dart';
import 'package:quiz/pages/tela_inicial.dart';

class ResultadosScreen extends StatelessWidget {
  final int pontos;
  final int totalPerguntas;

  ResultadosScreen({required this.pontos, required this.totalPerguntas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 51, 255, 238),
              Color.fromARGB(255, 0, 255, 128),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quiz Concluído!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Pontuação: $pontos de $totalPerguntas',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => tela_daniel()));
                },
                child: Text('Reiniciar o Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
