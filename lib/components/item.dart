import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ItemList extends StatelessWidget {
  Item item;
  String itemType;
  Color color;

  ItemList(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: const Color(0xffFEF6DB),
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              try {
                AudioCache audioCache =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                audioCache.play(item.sound);
              } catch (exception) {
                print(exception.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}

class PhraseWidget extends StatelessWidget {
  Item phrase;
  String itemType;
  Color color;

  PhraseWidget(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:310,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    phrase.jpName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  phrase.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              try {
                AudioCache audioCache = AudioCache(prefix: 'assets/sounds/$itemType/');
                audioCache.play(phrase.sound);
              } catch (exception) {
                print(exception.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
