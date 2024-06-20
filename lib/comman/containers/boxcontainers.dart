import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/imagestrings.dart';

class ABoxcontaines extends StatelessWidget {
  const ABoxcontaines({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
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
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        height: 140,
                        width: 210,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 7,
                              left: 8,
                              child: Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(AImages.img,
                                      height: 130,
                                      width: 190,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 14,
                              left: 12,
                              child: Container(
                                height: 30,
                                width: 40,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'down',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text('~~~~'),
                      SizedBox(
                        height: 1,
                      ),
                      Text('~~~~'),
                    ],
                  ),
                );
              }),
        ));
  }
}