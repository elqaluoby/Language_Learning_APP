import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});

  final Itemmodel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          if (item.image != null)
            Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(item.image!),
            ),
          Expanded(
            child: ItemInfo(item: item),
          ),
        ],
      ),
    );
  }
}
