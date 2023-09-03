import 'package:flutter/material.dart';

class ListViewExploreItem extends StatelessWidget {
  const ListViewExploreItem({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => widget,
      itemCount: 4,
      shrinkWrap: true,
    );
  }
}
