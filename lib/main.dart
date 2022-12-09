import 'package:flutter/material.dart';

void main() {
  runApp(const Builder());
}

class Builder extends StatefulWidget {
  const Builder({Key? key}) : super(key: key);

  @override
  State<Builder> createState() => _BuilderState();
}

class _BuilderState extends State<Builder> {
  List l=[100,200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
          centerTitle: true,
        ),
        body: ListView.builder(itemCount: l.length, itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
            height: 40,
            color: Colors.yellow[l[index]],
            ),
          );
        }
        ),
      ),
    );
  }
}
