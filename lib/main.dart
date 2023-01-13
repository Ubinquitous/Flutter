import 'package:flutter/material.dart';
import 'package:toonflix/widget/Button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Hey, Ubin Park',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 22,
                            ),
                          ),
                          const Text(
                            "\$5 194 382",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Button(
                                text: 'Transfer',
                                backgroundColor: Colors.amber,
                                textColor: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Button(
                                text: 'Request',
                                backgroundColor: Color(0xFF242424),
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: const [
                              Text('Wallets'),
                              Text('View All'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
