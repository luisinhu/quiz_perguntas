import 'package:flutter/material.dart';
import 'package:quiz/dados.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentQuestionIndex = 0;

  void nextQuestion() {
    if (currentQuestionIndex < quiz.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final questao = quiz[currentQuestionIndex]["pergunta"] as String;
    final answers = quiz[currentQuestionIndex]["respostas"] as List<String>;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 51, 255, 238),
                  Color.fromARGB(255, 0, 255, 128),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Questão ${currentQuestionIndex + 1}',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white ,
                      )
                      ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text(questao, style: const TextStyle(fontSize: 20))),
                ),
                SizedBox(height: 20),
                Column(
                  children: List<Widget>.generate(answers.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {
                          nextQuestion();
                        },
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.cyan,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text(answers[index], style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),)),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
