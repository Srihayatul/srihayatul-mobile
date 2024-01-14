import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void selectAnswer() {
    setState(() {
      if (questionIndex < ques.length - 1)
        questionIndex = questionIndex + 1;
    });
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              Text(question[questionIndex]),
              ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Answer 1 Selected')),
              ElevatedButton(child: Text('Answer 2'), onPressed: selectAnswer),
              ElevatedButton(child: Text('Answer 3'), onPressed: selectAnswer),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
            ],
          )),
    );
  }
}
