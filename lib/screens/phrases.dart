import 'package:flutter/material.dart';
import 'package:toku_app/components/item_builder.dart';
import 'package:toku_app/models/item.dart';

// ignore: camel_case_types, must_be_immutable
class phrases extends StatelessWidget {
  List<Item> phrasesList = [
    Item(
      Audio_name: 'dont_forget_to_subscribe.wav',
      JP_name: 'Kōdoku suru koto o wasurenaide kudasai',
      EN_name: 'dont forget to subscribe',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'i_love_programming.wav',
      JP_name: 'Watashi wa puroguramingu daisukidesu',
      EN_name: 'i love  programming',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'programming_is_easy.wav',
      JP_name: 'Puroguramingu wa kantandesu ',
      EN_name: 'programming is easy',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'where_are_you_going.wav',
      JP_name: 'Doko ni iku no',
      EN_name: 'where are you going',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'what_is_your_name.wav',
      JP_name: 'Namae wa nandesu ka',
      EN_name: 'what is your name ?',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'i_love_anime.wav',
      JP_name: 'Watashi wa anime ga daisukidesu',
      EN_name: 'i love anime',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'how_are_you_feeling.wav',
      JP_name: 'Go kibun wa ikagadesu ka',
      EN_name: 'how are you feeling?',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'are_you_coming.wav',
      JP_name: 'Kimasu ka',
      EN_name: 'are you coming?',
      Item_type: 'phrases',
      Num_image: '',
    ),
    Item(
      Audio_name: 'yes_im_coming.wav',
      JP_name: 'Hai watashi wa kite imasu',
      EN_name: 'yes i am coming',
      Item_type: 'phrases',
      Num_image: '',
    ),
  ];

  phrases({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463229),
          title: const Text(
            'phrases',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, i) => PharsesItemsBuilder(
                  item: phrasesList[i],
                  color: const Color(0xff409EC3),
                  itemType: 'phrases',
                ),
            itemCount: phrasesList.length));
  }
}
