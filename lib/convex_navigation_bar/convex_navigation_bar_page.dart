import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigtion/util/custom_button.dart';

class ConvexNavigationBarPage extends StatefulWidget {
  const ConvexNavigationBarPage({ Key? key }) : super(key: key);

  @override
  State<ConvexNavigationBarPage> createState() => _ConvexNavigationBarPageState();
}

class _ConvexNavigationBarPageState extends State<ConvexNavigationBarPage> {
  String selectedTile="fixed";
  Map<String,TabStyle> styles={
    'fixed':TabStyle.fixed,
    'fixedCircle':TabStyle.fixedCircle,
    'flip':TabStyle.flip,
    'react':TabStyle.react,
    'reactCircle':TabStyle.reactCircle,
    'textIn':TabStyle.textIn,
    'titled':TabStyle.titled,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConvexNavigationBar'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
         CustomButton(onPressed: () {
          setState(() {
            selectedTile="fixed";
          });
         }, title: "Fixed"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
           setState(() {
            selectedTile="fixedCircle";
          });
         }, title: "FixedCircle"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
             setState(() {
            selectedTile="flip";
          });
         }, title: "Flip"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
             setState(() {
            selectedTile="react";
          });
         }, title: "React"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
             setState(() {
            selectedTile="reactCircle";
          });
         }, title: "ReactCircle"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
             setState(() {
            selectedTile="textIn";
          });
         }, title: "TextIn"),
         const SizedBox(height: 20),
         CustomButton(onPressed: () {
             setState(() {
            selectedTile="titled";
          });
         }, title: "Titled"),
         const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: styles[selectedTile],
        items: const [
          TabItem(icon: Icons.home,title: "Home"),
          TabItem(icon: Icons.people,title: "People"),
          TabItem(icon: Icons.message,title: "Message"),
          TabItem(icon: Icons.settings,title: "Settings"),
          TabItem(icon: Icons.podcasts,title: "Podcasts"),
        ],
        initialActiveIndex: 1,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
