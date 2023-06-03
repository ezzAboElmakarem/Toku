import 'package:flutter/material.dart';
import 'package:toku_app/components/item_builder.dart';
import 'package:toku_app/models/item.dart';

// ignore: must_be_immutable
class ColorsScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Item> ColorsList = [
    Item(
        Num_image: 'assets/images/colors/color_black.png',
        JP_name: 'Kuro',
        EN_name: 'black',
        Audio_name: 'black.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_brown.png',
        JP_name: 'Chairo',
        EN_name: 'brown',
        Audio_name: 'brown.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_dusty_yellow.png',
        JP_name: 'Dasutiierō',
        EN_name: 'dusty yellow',
        Audio_name: 'dusty yellow.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_gray.png',
        JP_name: 'Gurē',
        EN_name: 'gray',
        Audio_name: 'gray.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_green.png',
        JP_name: 'Midori',
        EN_name: 'green',
        Audio_name: 'green.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_red.png',
        JP_name: 'Aka',
        EN_name: 'red',
        Audio_name: 'red.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/color_white.png',
        JP_name: 'Shiro',
        EN_name: 'white',
        Audio_name: 'white.wav',
        Item_type: 'colors'),
    Item(
        Num_image: 'assets/images/colors/yellow.png',
        JP_name: 'Kiiro',
        EN_name: 'yellow',
        Audio_name: 'yellow.wav',
        Item_type: 'colors'),
  ];

  ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463229),
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, i) => ItemsBuilder(
                  item: ColorsList[i],
                  color: const Color(0xff7B3E9F),
                  itemType: 'colors',
                ),
            itemCount: ColorsList.length));
  }
}
