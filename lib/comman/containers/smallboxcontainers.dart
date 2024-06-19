import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ASBoxcontaines extends StatelessWidget {
  const ASBoxcontaines({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: ListView.builder(
                itemCount: 80,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right:0),
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
                          height: 300,
                          width: 400,
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
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                                        height: 270,
                                        width: 370,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 25,
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
                                right: 20,
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
                        Padding(
                          padding: const EdgeInsets.only(right: 350),
                          child: Text('~~ ~~'),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 350),
                          child: Text('~~~~'),
                        ),

                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
