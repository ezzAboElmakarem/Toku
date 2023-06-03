import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors.dart';
import 'package:toku_app/screens/family_members.dart';
import 'package:toku_app/screens/numbers.dart';
import 'package:toku_app/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef3d7),
      appBar: AppBar(
        backgroundColor: const Color(0xff463229),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            child: ListTile(
                tileColor: const Color(0xfff8942f),
                title: const Text(
                  'Number',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NumbersScreen(),
                  ));
                }),
          ),
          InkWell(
            child: ListTile(
              tileColor: const Color(0xff799A5E),
              title: const Text('Family Member',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FamilyMember(),
                ));
              },
            ),
          ),
          InkWell(
            child: ListTile(
              tileColor: const Color(0xff7B3E9F),
              title:
                  const Text('Colors', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ColorsScreen(),
                ));
              },
            ),
          ),
          InkWell(
            child: ListTile(
              tileColor: const Color(0xff409EC3),
              title: const Text(
                'Phrases',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => phrases(),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
