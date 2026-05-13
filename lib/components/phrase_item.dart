import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/number.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});

  final Itemmodel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: ItemInfo(item: item),
    );
  }
}
