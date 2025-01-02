import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
              AssetImage('images/icon.png'),
              backgroundColor: Colors.white,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('nxxx@エンジニア4年生'),
                  SizedBox(width: 8),
                  Text('2025/01/02'),
                ],
              ),
              SizedBox(height: 4),
              Text('Flutter楽しい！'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
