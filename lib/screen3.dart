import 'package:amey/comman/containers/boxcontainers.dart';
import 'package:amey/comman/containers/containes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'comman/containers/smallboxcontainers.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
                   padding: const EdgeInsets.only(left:20.0),
                   child: SizedBox(
                       height: 80,
                       width: 270,
                       child: TextField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)
                           )
                         ),
                       )),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:80,right: 8.0),
                   child: Container(
                     height: 80,
                     decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                   child: Icon(Iconsax.setting),
                   ),
                 ),
               ],
             ),
           ),
           ASBoxcontaines(),
          ],
        ),
      ),
    );
  }
}
