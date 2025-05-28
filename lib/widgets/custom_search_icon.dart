import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(CupertinoIcons.search,size: 28,color: Colors.white,)),
    );
  }
}
