import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';


class ShoeGrid extends StatelessWidget {
  const ShoeGrid({Key?  key, required this.shoes}) : super(key: key);
  final List<Shoe> shoes;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.symmetric(horizontal: 20),
    sliver: SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,  childAspectRatio: 0.72),
      delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: shoes[index].bgColor.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(35)
                ),
              ),
            );
          },  childCount: shoes.length)
    ),
    );
  }
}
