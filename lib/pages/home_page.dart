import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:translator/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localization'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text('flutter'.tr(),
                  style:
                  TextStyle(color: Colors.black,fontSize: 30),),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  child: MaterialButton(
                    onPressed: (){
                      context.setLocale(Locale('en'));
                    },
                    child: Text('English',style: TextStyle(fontSize: 17),),
                    textColor: Colors.white,
                    color: Colors.green,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 120,
                  child: MaterialButton(
                    onPressed: (){
                      context.setLocale(Locale('ko'));
                    },
                    child: Text('Korean',style: TextStyle(
                      color: Colors.white,fontSize: 17
                    ),),
                    color: Colors.red,
                 ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 120,
                  child: MaterialButton(
                    onPressed: (){
                      context.setLocale(Locale('ja'));
                    },
                    child: Text('Japan',style: TextStyle(fontSize: 17),),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
