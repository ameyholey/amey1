import 'package:flutter/material.dart';

import 'comman/containers/containes.dart';
import 'comman/indicator/indicator.dart';
import 'constants/text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Indicator(value: 0.7),
          ),

          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  AText.s1t1,
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.0),
                child: Text(
                  'you want to go ? ',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          //  SizedBox(
          //  height: 10,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Container(
                height: 100,
                child: ListView.separated(
                  itemBuilder: (context, index) => const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AContainers(
                              width: 180,
                              height: 180,
                              padding: 20,
                              radius: 10,
                              backgroundcolor: Colors.white),
                        ],
                      ),
                      SizedBox(
                        width:20,
                      ),
                      Row(
                        children: [
                          AContainers(
                              width: 180,
                              height: 180,
                              padding: 20,
                              radius: 10,
                              backgroundcolor: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 8,
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black, // Text color
                ),
                onPressed: () {},
                child: const Text(
                  'Continue.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
