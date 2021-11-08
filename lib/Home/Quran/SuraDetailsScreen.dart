
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiproject/Home/Quran/VerseWidget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName ='sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if(ayat.isEmpty){
    readSura(args.index);
    }
    return Stack(
      children: [
      Image.asset('assets/images/bg3.png', width: double.infinity,height: double.infinity,
      fit: BoxFit.fill,),
     Scaffold(
      backgroundColor: Colors.transparent,
       appBar: AppBar(
        title: Text(args.name),
    ),
       body: Container(
         decoration: BoxDecoration(color: Colors.white,
           borderRadius: BorderRadius.circular(24),
         ),
         margin: EdgeInsets.symmetric(vertical: 24,horizontal: 40),
         padding: EdgeInsets.all(10),
         child: ayat.isEmpty ? Center(child: CircularProgressIndicator())
             : ListView.separated(
             itemBuilder: (buildContext,index){
               return VerseWidget(ayat[index],index);
             },
             itemCount: ayat.length,
             separatorBuilder: (buildContext,index) {
               return Container(
                 height: 1,
                 color: Theme
                     .of(context)
                     .primaryColor,
                 margin: EdgeInsets.symmetric(horizontal: 24),
               );
             }
             ),
       ),
    ),
    ]
    );
  }

  void readSura(int index) async{
    String fileName = 'assets/files/${index+1}.txt';
    String fileContent = await rootBundle.loadString(fileName);
   // print(fileContent);
    List<String> verses=fileContent.split('\n');
    ayat=verses;
    setState(() {
    });
  }
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs(this.index,this.name);
}
