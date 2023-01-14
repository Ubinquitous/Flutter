import 'package:flutter/material.dart';

class WalletsCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final Color backgroundColor;
  final bool isInverted;
  final double iconScale;
  final double offsetX, offsetY;

  const WalletsCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.backgroundColor,
    required this.isInverted,
    required this.iconScale,
    required this.offsetX,
    required this.offsetY,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offsetX, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: iconScale,
                child: Transform.translate(
                  offset: const Offset(-10, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
