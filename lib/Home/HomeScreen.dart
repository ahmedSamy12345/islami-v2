import 'package:flutter/material.dart';
import 'package:islamiproject/Home/Hadeth/HadethTab.dart';
import 'package:islamiproject/Home/Quran/QuranTab.dart';
import 'package:islamiproject/Home/Radio/RadioTab.dart';
import 'package:islamiproject/Home/Tasbeh/TasbehTab.dart';
import 'package:islamiproject/main.dart';

class HomeScreen extends StatefulWidget {

static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Image.asset('assets/images/bg3.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('islami'),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
                onTap: (index){
                  currentIndex=index;
                  setState(() {
                  });
                },
                items:[
                  BottomNavigationBarItem(
                  icon:ImageIcon(AssetImage('assets/images/moshaf_blue.png')) ,
                  label:'Quran' ,
                  ),
             BottomNavigationBarItem(
             icon:ImageIcon(AssetImage('assets/images/Path 1.png')) ,
              label:'hadeth' ,
            ),
            BottomNavigationBarItem(
             icon:ImageIcon(AssetImage('assets/images/sebha.png')) ,
            label:'Tasbeh' ,
             ),
            BottomNavigationBarItem(
             icon:ImageIcon(AssetImage('assets/images/radio.png')) ,
              label:'Radio' ,
             ),
    ],
            ),
          ),
          body: Container(
            child: views[currentIndex],
          ),

           ),

    ]
    );

  }
  List<Widget> views=[
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
