import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          children: [
            const SizedBox(
              width: 90,
              height: 90,
              child: Center(
                child: Text('画面遷移'),
              ),
            ),
            Column(
              children: [
                Text('Tigers'),
                Text('Carp'),
              ],
            ),
            Row(
              children: [
                Text('Rowの中'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
