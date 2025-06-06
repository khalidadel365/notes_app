import 'package:flutter/material.dart';

class ColorItem extends StatefulWidget {
   ColorItem({super.key,required this.isActive, required this.color});
  final bool isActive ;
   final Color color;
  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  @override
  Widget build(BuildContext context) {


    return widget.isActive ? CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 21,
        ),
      ),
    ):CircleAvatar(
      backgroundColor: widget.color,
      radius: 21,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key,});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0 ;
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 45,
      child: ListView.separated(
        itemBuilder: (context,index)=> GestureDetector(
          onTap: (){
            setState(() {
              currentIndex = index;
            });
          },
          child: ColorItem(
            isActive: currentIndex == index ,
            color: colors[index],
          ),
        ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context,index)=>SizedBox(width: 8,),
      ),
    );
  }
}
