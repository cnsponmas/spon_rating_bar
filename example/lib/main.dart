import 'package:flutter/material.dart';
import 'package:spon_rating_bar/spon_rating_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ratingValue ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 300,),
            Row(
              children: <Widget>[
                Expanded(child: Container(),),
                SponRatingWidget(
                  value: 9,
                  size: 30,
                  padding: 5,
                  nomalImage: 'img/star_nomal.png',
                  selectImage: 'img/star.png',
                  selectAble: true,
                  onRatingUpdate: (value) {
                    ratingValue = value;
                    setState(() {

                    });
                  },
                  maxRating: 10,
                  count: 6,
                ),
                Expanded(child: Container(),)
              ],
            ),
            SizedBox(height: 10,),
            Text(value())
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String value() {
    if(ratingValue == null) {
      return '评分：9 分';
    }else {
      return '评分：$ratingValue  分';
    }
  }
}
