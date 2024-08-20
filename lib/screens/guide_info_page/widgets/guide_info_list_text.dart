import 'package:flutter/material.dart';
import 'package:glow_up/style.dart';
import 'package:glow_up/utils/spaces.dart';

class GuideInfoListText extends StatelessWidget {
  final String titleList;
  final List<ListItem> items;

  const GuideInfoListText({
    Key? key,
    required this.titleList,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleList,
          style: BS.tex20Text.apply(color: BC.purpleViolet),
        ),
        Space.h16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.map((item) => _buildListItem(item)).toList(),
        ),
      ],
    );
  }

  Widget _buildListItem(ListItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.circle,
              color: BC.purpleViolet,
              size: Sizes.s10,
            ),
            Space.w8,
            Text(
              item.text,
              style: BS.tex16,
            ),
          ],
        ),
        Space.h8,
        Text(
          item.subText,
          style: BS.tex14withFont500
        ),
        Space.h16,
      ],
    );
  }
}

class ListItem {
  final String text;
  final String subText;

  ListItem({
    required this.text,
    required this.subText,
  });
}
