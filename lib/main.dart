import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
// Root app chạy
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // Every Ui component are widget
    @override
    Widget build(BuildContext context) {
      final wordPair = new WordPair.random();
      // bắt cuộc, lần đầu chạy sẽ vào hàm build
      // kế thừa từ lớp cha nên bắt buộc overiride
      return new MaterialApp(
        debugShowCheckedModeBanner: false ,
         title: "This is first app",
         home: new Scaffold(
           appBar: new AppBar(
             title: new Text("Header app"),
           ),
           body: new Center(
            child: new Text(wordPair.asUpperCase,
                style: new TextStyle(fontSize:  30.0, color: Colors.deepPurple)
            ),
           )
         )
      );
    }
}