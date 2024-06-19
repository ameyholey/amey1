import 'package:flutter/material.dart';

class ACircularcontainer extends StatelessWidget {
  const ACircularcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121,
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: ListView.builder(
            itemCount: 80,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.circular(210)),
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text('~~~~'),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
