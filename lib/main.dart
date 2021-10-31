import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: const Icon(Icons.videocam),
          title: const Text(
            'KBOYのFlutter大学',
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: IconButton(
                onPressed: () {
                  // todo
                },
                icon: const Icon(Icons.search),
              ),
            ),
            SizedBox(
              width: 44,
              child: IconButton(
                onPressed: () {
                  // todo
                },
                icon: const Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Image.network(
                  'https://icooon-mono.com/i/icon_11354/icon_113541_64.png'),
              Column(
                children: <Widget>[
                  const Text(
                    'KBOYのFlutter大学',
                  ),
                  TextButton(
                    onPressed: () {
                      // todo
                    },
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.video_call),
                        Text('登録する'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
