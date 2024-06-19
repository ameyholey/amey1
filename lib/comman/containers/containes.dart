import 'package:flutter/material.dart';

import '../../constants/text.dart';

class AContainers extends StatelessWidget {
  const AContainers(
      {super.key,
      required this.width,
      required this.height,
      required this.padding,
      required this.radius,
      required this.backgroundcolor});

  final double width;
  final double height;
  final double padding;

  final double radius;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      width: width,
      height: height,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 50,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('~'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
