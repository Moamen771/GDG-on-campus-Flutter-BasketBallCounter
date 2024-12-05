import 'package:basketballcounter/widgets/points_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BasketBall counter',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .70,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 90),
                    ),
                    ReusableButton(
                        text: 'Add 1 Point',
                        onTap: () {
                          setState(() {
                            teamAPoints += 1;
                          });
                        }),
                    ReusableButton(
                        text: 'Add 2 Points',
                        onTap: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        }),
                    ReusableButton(
                        text: 'Add 3 Points',
                        onTap: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        }),
                  ],
                )),
                Container(
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(vertical: 140),
                  width: 2,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 90),
                    ),
                    ReusableButton(
                        text: 'Add 1 Point',
                        onTap: () {
                          setState(() {
                            teamBPoints += 1;
                          });
                        }),
                    ReusableButton(
                        text: 'Add 2 Points',
                        onTap: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        }),
                    ReusableButton(
                        text: 'Add 3 Points',
                        onTap: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        }),
                  ],
                ))
              ],
            ),
          ),
          ReusableButton(
            onTap: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            text: 'Reset',
          ),
          const Spacer()
        ],
      ),
    );
  }
}
