import 'package:flutter/material.dart';
import 'package:toku_app/components/item_builder.dart';
import 'package:toku_app/models/item.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Item> Num = [
    Item(
        Num_image: 'assets/images/numbers/number_one.png',
        JP_name: 'Ichi',
        EN_name: 'one',
        Audio_name: 'number_one_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_two.png',
        JP_name: 'Ni',
        EN_name: 'two',
        Audio_name: 'number_two_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_three.png',
        JP_name: 'San',
        EN_name: 'three',
        Audio_name: 'number_three_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_four.png',
        JP_name: 'Shi',
        EN_name: 'four',
        Audio_name: 'number_four_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_five.png',
        JP_name: 'Go',
        EN_name: 'five',
        Audio_name: 'number_five_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_six.png',
        JP_name: 'Roku',
        EN_name: 'six',
        Audio_name: 'number_six_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_seven.png',
        JP_name: 'Sebun',
        EN_name: 'Seven',
        Audio_name: 'number_seven_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_eight.png',
        JP_name: 'hachi',
        EN_name: 'eight',
        Audio_name: 'number_eight_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_nine.png',
        JP_name: 'Kyū',
        EN_name: 'nine',
        Audio_name: 'number_nine_sound.mp3',
        Item_type: 'numbers'),
    Item(
        Num_image: 'assets/images/numbers/number_ten.png',
        JP_name: 'Jū',
        EN_name: 'ten',
        Audio_name: 'number_ten_sound.mp3',
        Item_type: 'numbers'),
  ];

  NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463229),
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, i) => ItemsBuilder(
                  item: Num[i],
                  color: const Color(0xfff8942f),
                  itemType: 'family_members',
                ),
            itemCount: Num.length));
  }
}
