import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tt_youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "No. $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: const Icon(Icons.videocam),
          title: const Text(
            'Flutter Study Project',
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
                      children: const <Widget>[
                        Text('add text'),
                        Text('add text second'),
                        Icon(
                          Icons.access_alarm,
                          color: Colors.blueGrey,
                        ),
                        Text('!!'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Flutter Study Movie',
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
                      onTap: () async => await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoDetailPage(),
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(6),
                      leading: Image.network(
                          'https://icooon-mono.com/i/icon_10848/icon_108481_64.png'),
                      title: Column(
                        children: <Widget>[
                          const Text(
                            '1項目目',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                '説明 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Text('Data ' + items[index]),
                            ],
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.more_vert),
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
