import 'package:flutter/material.dart';
import 'package:islamiproject/Home/Quran/SuraDetailsScreen.dart';

class SuraNameWidget extends StatelessWidget {
String suraName;
int index;
SuraNameWidget(this.index,this.suraName,);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName ,
            arguments: SuraDetailsArgs(index,suraName));
      },
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(suraName,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
        ),
        ),
      ),
    );
  }
}
