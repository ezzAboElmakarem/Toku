import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ItemsBuilder extends StatelessWidget {
  final Item item;
  final Color color;
  final String itemType;
  const ItemsBuilder(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFCF1D7),
              child: Image.asset('${item.Num_image}')),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.JP_name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.EN_name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(
                  Audio("assets/sounds/${item.Item_type}/${item.Audio_name}"),
                );
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30))
        ],
      ),
    );
  }
}

class PharsesItemsBuilder extends StatelessWidget {
  final Item item;
  final Color color;
  final String itemType;
  const PharsesItemsBuilder(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.JP_name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  item.EN_name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(
                  Audio("assets/sounds/phrases/${item.Audio_name}"),
                );
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30))
        ],
      ),
    );
  }
}
