import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final  page ;
  final  icons;

  CustomBottomNavigationBar({required this.page ,required this.icons});
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int pageIndex =0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("BottomNavigationBar"),
       backgroundColor: Colors.blue,
     ),
     body: widget.page[pageIndex],
     bottomNavigationBar:buildMyNavBar(context)  ,
   );
  }
  Widget buildMyNavBar(BuildContext context){
    return Container(
        height: 60,
        decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
    borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    ),
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
        List.generate(widget.icons.length, (index) {
          return InkWell(
              // onTap: (){
              //   setState(() {
              //     pageIndex = index;
              //   });
              // },
              child: Container(
                   height: 50,
                   width: 50,
                  child: Icon(
              widget.icons[index],size: 35,color: pageIndex==index ?Colors.white:Colors.black,)
              ));
        }))
    );
  }
}