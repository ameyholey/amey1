import 'package:amey/constants/imagestrings.dart';
import 'package:amey/screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'comman/containers/boxcontainers.dart';
import 'comman/containers/circularcontainers.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset( AImages.proimg,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.grey,
                        ),
                        Center(child: Text('~~~~~~ ~~~~~')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Know where you wanna go?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.black, // Text color
                        ),
                        onPressed: ()  => Get.to(() => const Screen1()),
                        child: const Text(
                          'Start your trips',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 2),
                child: Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ACircularcontainer(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 2),
                child: Text(
                  'Inspiration for your trip',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ABoxcontaines(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 2),
                child: Text(
                  'Free Destinations',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ABoxcontaines(),
            ],
          ),
        ),
      ),
    );
  }
}
