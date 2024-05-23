import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Basketball Points Counter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      buildbutton('Add 1 Point', () {
                        setState(() {
                          teamAPoints++;
                        });
                      }),
                      buildbutton('Add 2 Point', () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      }),
                      buildbutton('Add 3 Point', () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      buildbutton('Add 1 Point', () {
                        setState(() {
                          teamBPoints++;
                        });
                      }),
                      buildbutton('Add 2 Point', () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      }),
                      buildbutton('Add 3 Point', () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      }),
                    ],
                  ),
                ),
              ],
            ),
            buildbutton('Reset', () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            }),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildbutton(String title, Function()? onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.teal,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
