import 'package:flutter/material.dart';

import '../../../Model/GamesDetails.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
            itemCount: Games.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Column(
                        children: [
                          Container(child: Image.asset(Games[index].img)),
                          Row(
                            children: [
                              Text(
                                Games[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(Games[index].img2),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '${Games[index].players}+\nPlayers',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                // Added Expanded widget
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      backgroundColor: const Color(0xffFFBE00),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Play Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
                    ]),
                  ),
                ),
              );
            }));
  }
}
