import 'package:flutter/material.dart';
import 'package:game/core/colors.dart';

import 'package:get/get.dart';

import '../controllers/game_page_controller.dart';

class GamePageView extends GetView<GamePageController> {
  const GamePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Крестики нолики',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 35, 3, 12)),
        useMaterial3: true,
      ),
      home: const TicTacToePage(
        title: 'Крестики нолики',
      ),
    );
  }
}

class TicTacToePage extends StatefulWidget {
  const TicTacToePage({Key? key, required this.title});

  final String title;

  @override
  State<TicTacToePage> createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  bool isTurn = true;
  int oScore = 0;
  int xScore = 0;
  int count = 0;

  List<String> changeXO = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.firstPrimeryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondPrimeryColor,
        title: Text(
          widget.title,
          style: const TextStyle(color: AppColors.firstPrimeryColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Игрок X',
                            style: TextStyle(
                                color: AppColors.secondPrimeryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            xScore.toString(),
                            style: const TextStyle(
                                color: AppColors.thirdPrimeryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Игрок O',
                            style: TextStyle(
                                color: AppColors.secondPrimeryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            oScore.toString(),
                            style: const TextStyle(
                                color: AppColors.thirdPrimeryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: changeXO.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () => _setXor0(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 10, 1, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(changeXO[index],
                            style: const TextStyle(
                                color: AppColors.secondPrimeryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 48)),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setXor0(int index) {
    if (isTurn && changeXO[index] == '') {
      setState(() {
        changeXO[index] = 'o';
        isTurn = !isTurn;
      });
    } else if (!isTurn && changeXO[index] == '') {
      setState(() {
        changeXO[index] = 'x';
        isTurn = !isTurn;
      });
    }

    count++;
    _checkWinner();
  }

  void _checkWinner() {
    if (changeXO[0] == changeXO[1] &&
        changeXO[0] == changeXO[2] &&
        changeXO[0] != '') {
      _showDialog(winner: changeXO[0]);
    }
    if (changeXO[3] == changeXO[4] &&
        changeXO[3] == changeXO[5] &&
        changeXO[3] != '') {
      _showDialog(winner: changeXO[3]);
    }
    if (changeXO[6] == changeXO[7] &&
        changeXO[6] == changeXO[8] &&
        changeXO[6] != '') {
      _showDialog(winner: changeXO[6]);
    }
    if (changeXO[0] == changeXO[3] &&
        changeXO[0] == changeXO[6] &&
        changeXO[0] != '') {
      _showDialog(winner: changeXO[0]);
    }
    if (changeXO[1] == changeXO[4] &&
        changeXO[1] == changeXO[7] &&
        changeXO[1] != '') {
      _showDialog(winner: changeXO[1]);
    }
    if (changeXO[2] == changeXO[5] &&
        changeXO[2] == changeXO[8] &&
        changeXO[2] != '') {
      _showDialog(winner: changeXO[2]);
    }
    if (changeXO[0] == changeXO[4] &&
        changeXO[0] == changeXO[8] &&
        changeXO[0] != '') {
      _showDialog(winner: changeXO[0]);
    }
    if (changeXO[2] == changeXO[4] &&
        changeXO[2] == changeXO[6] &&
        changeXO[2] != '') {
      _showDialog(winner: changeXO[2]);
    }

    if (count == 9) {
      _showDialog(winnerExist: false);
      _clearBoard();
    }
  }

  void _showDialog({String winner = '', bool winnerExist = true}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: AppColors.firstPrimeryColor,
            title: Text(
              textAlign: TextAlign.center,
              winnerExist ? 'Победитель: $winner' : 'У вас ничья',
              style: const TextStyle(
                  color: AppColors.thirdPrimeryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            actions: [
              const SizedBox(
                height: 24,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Начать заново',
                          style: TextStyle(
                              color: AppColors.thirdPrimeryColor,
                              fontSize: 20))))
            ],
          );
        });

    count = 0;
    _clearBoard();
    if (winner == 'o') {
      setState(() {
        oScore++;
      });
    } else if (winner == 'x') {
      xScore++;
    }
  }

  void _clearBoard() {
    for (int i = 0; i < 9; i++) {
      changeXO[i] = '';
    }
  }
}
