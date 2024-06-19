import 'package:amey/comman/containers/boxcontainers.dart';
import 'package:amey/comman/containers/containes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'comman/containers/smallboxcontainers.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});

  final droparray = ['1,2,3,4,5,6'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 10, top: 20),
                    child: SizedBox(
                        height: 80,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.search_normal),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Iconsax.setting,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: DropdownButton(
                    hint: Text('~~~~~~~'),
                    borderRadius: BorderRadius.circular(30),
                    items: droparray.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: DropdownButton(
                    hint: Text('~~~~~~'),

                    borderRadius: BorderRadius.circular(30),
                    items: droparray.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: DropdownButton(
                    hint: Text('~~~~~~'),
                    borderRadius: BorderRadius.circular(60),
                    items: droparray.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
              ],
            )),
            ASBoxcontaines(),
          ],
        ),
      ),
    );
  }
}
