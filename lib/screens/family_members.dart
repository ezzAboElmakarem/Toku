import 'package:flutter/material.dart';
import 'package:toku_app/components/item_builder.dart';
import 'package:toku_app/models/item.dart';

// ignore: must_be_immutable
class FamilyMember extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Item> family_members = [
    Item(
        Num_image: 'assets/images/family_members/family_grandfather.png',
        JP_name: 'Ojīsan',
        EN_name: 'grandfather',
        Audio_name: 'grand father.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_grandmother.png',
        JP_name: 'O bāchan',
        EN_name: 'grandmother',
        Audio_name: 'grand mother.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_father.png',
        JP_name: 'Chichioya',
        EN_name: 'father',
        Audio_name: 'father.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_mother.png',
        JP_name: 'Hahaoya',
        EN_name: 'mother',
        Audio_name: 'mother.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_older_brother.png',
        JP_name: 'Ani',
        EN_name: 'older brother',
        Audio_name: 'older bother.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_older_sister.png',
        JP_name: 'Ane',
        EN_name: 'older sister',
        Audio_name: 'older sister.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_son.png',
        JP_name: 'Musuko',
        EN_name: 'son',
        Audio_name: 'son.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_daughter.png',
        JP_name: 'Musume',
        EN_name: 'daughter',
        Audio_name: 'daughter.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_younger_brother.png',
        JP_name: 'Otōto',
        EN_name: 'younger brother',
        Audio_name: 'younger brohter.wav',
        Item_type: 'family_members'),
    Item(
        Num_image: 'assets/images/family_members/family_younger_sister.png',
        JP_name: 'Imōto',
        EN_name: 'younger sister',
        Audio_name: 'younger sister.wav',
        Item_type: 'family_members'),
  ];

  FamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463229),
          title: const Text(
            'Family Member',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, i) => ItemsBuilder(
                  item: family_members[i],
                  color: const Color(0xff799A5E),
                  itemType: 'family_members',
                ),
            itemCount: family_members.length));
  }
}
