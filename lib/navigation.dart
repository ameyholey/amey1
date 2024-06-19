import 'package:amey/screen1.dart';
import 'package:amey/screen2.dart';
import 'package:amey/screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
              indicatorShape: LinearBorder.end(),
          height: 80,
          elevation: 3,

          onDestinationSelected: (index) =>
          controller.selectedIndex.value = index,
          selectedIndex: controller.selectedIndex.value,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'store'),

          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Screen2(),
     Screen3(),



  ];
}
