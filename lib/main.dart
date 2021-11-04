import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                          'https://icooon-mono.com/i/icon_11354/icon_113541_64.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(items[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
