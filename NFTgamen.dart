import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../shop4/constants.dart';
import 'NFTgamen_1.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class NFTgamen extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}



class _SettingsPageState extends State<NFTgamen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.indigo[100],
        // elevation: 1,
        leading: IconButton(
          onPressed: () { // ボタン押したときに実行される
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NFTgamen1(), // SecondPageは遷移先のクラス
              ),
            );
          },
          icon: Icon(
            Icons.account_circle,
            color: Colors.amber,
            size: 40.0,
          ),

        ),


        // 右側のアイコン一覧
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(IconData(0xf06bc, fontFamily: 'MaterialIcons',),
              color: Colors.amber,
              size: 44.0,),
          ),


        ],

      ),
//真ん中
      body: Column(
    children: [
      Container(
        color: Colors.indigo[100],

        height: 550,
        child: Container(
          width: 1500,
          height: 600,
          child: Stack(
            children: [

              Align(
                alignment: Alignment(0.10, 0.0),
                child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(),
                      items: imgList
                          .map((item) => Container(
                        child: Center(
                            child:
                            Image.network(item, fit: BoxFit.cover, width:500)),
                      ))
                          .toList(),
                    )),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child:Container(


                  child: IconButton(
                    icon: Icon(IconData(0xe792, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      size: 44.0,),
                    onPressed: () {
                      print("Icon Button clicked");
                    },
                    color: Colors.white,

                  ),
                ),


              ),
              Align(
                alignment: Alignment.centerRight,
                child:Container(


                  child: IconButton(
                    icon: Icon(IconData(0xee8c, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      size: 44.0,),
                    onPressed: () {
                      print("Icon Button clicked");
                    },
                    color: Colors.white,

                  ),
                ),

              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:Container(

                  child: Text(
                      'Sleeping!\nお疲れ様です。'
                          ,

                      style: TextStyle(

                        height:1.5,

                        //backgroundColor: Colors.red,
                        color: Colors.green[100],
                        fontSize: 38,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                      )
                ),

              ),
              /*Text(
                  'Sleeping!',
                  textAlign: TextAlign.right,
                  style: TextStyle(

                    height:0,

                    //backgroundColor: Colors.red,
                    color: Colors.green,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.0,
                  )

              ),*/
              ),
            ],
          ),
        ),

      ),
        Container(
          child: Align(),
        ),
        Container(
          child: Stack(
            children: [

              // Flutter1.22以降のみ


              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                width: 200, //横幅
                height:105, //高さ

                child:ElevatedButton.icon(
                icon: const Icon(
                  IconData(0xf870, fontFamily: 'MaterialIcons'),
                  size: 64,
                  color: Colors.white,
                ),
                label: const Text('START\n 睡眠'),



                style: ElevatedButton.styleFrom(

                 /* side: BorderSide(
                    color: Colors.black, //枠線!
                    width: 3, //枠線！
                  ),*/
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  elevation: 16,
                ),
                onPressed: () {       showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('サンプルダイアログ'),
                      content: Text('アプリを閉じますか'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("CANCEL"),
                          onPressed: () => Navigator.pop(context),
                        ),
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () => SystemNavigator.pop(),
                        ),
                      ],
                    );
                  },
                );},
              ),
    ),
              ),
    ]
          )

        // Flutter1.22以降のみ

        )


  ],
    ),
    );
  }




}