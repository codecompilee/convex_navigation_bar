import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigtion/convex_navigation_bar/convex_navigation_bar_page.dart';
import 'package:flutter_bottom_navigtion/util/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ConvexNavigationBarPage(),
                ));
              },
              title: "Convex Navigation Bar")
        ],
      ),
    );
  }
}
