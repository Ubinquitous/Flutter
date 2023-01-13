import 'package:flutter/material.dart';
import 'package:toonflix/widget/Button.dart';
import 'package:toonflix/widget/wallet_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Wallets',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const WalletsCard(
                          name: 'Euro',
                          code: 'EUR',
                          amount: '9 821',
                          icon: Icons.euro_symbol,
                          backgroundColor: Color(0xFF1F2123),
                          isInverted: false,
                          iconScale: 2.3,
                          offsetX: 0,
                          offsetY: 0,
                        ),
                        const WalletsCard(
                          name: 'Bitcoin',
                          code: 'BTC',
                          amount: '3 184',
                          icon: Icons.currency_bitcoin_rounded,
                          backgroundColor: Colors.white,
                          isInverted: true,
                          iconScale: 2.4,
                          offsetX: 0,
                          offsetY: -28,
                        ),
                        const WalletsCard(
                          name: 'Rupee',
                          code: 'INR',
                          amount: '16 517',
                          icon: Icons.currency_rupee,
                          backgroundColor: Color(0xFF1F2123),
                          isInverted: false,
                          iconScale: 2.6,
                          offsetX: 0,
                          offsetY: -56,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
