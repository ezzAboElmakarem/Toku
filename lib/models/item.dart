import 'package:flutter/foundation.dart';

class Item {
  final String EN_name;
  final String JP_name;
  final String? Num_image;
  final String Audio_name;
  final String Item_type;

  Item({
    @required this.Num_image,
    required this.JP_name,
    required this.EN_name,
    required this.Audio_name,
    required this.Item_type,
  });
}
