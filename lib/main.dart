import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessengerProfile(),
    );
  }
}

class MessengerProfile  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger Chat'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ProfileStory('https://cdn2.vectorstock.com/i/1000x1000/32/01/user-sign-icon-person-symbol-human-avatar-vector-12693201.jpg', 'Refka Aissa'),
              //ProfileStory(image, name),
              ProfileStory('https://cdn2.vectorstock.com/i/1000x1000/32/01/user-sign-icon-person-symbol-human-avatar-vector-12693201.jpg', 'Oussema Ben Rejeb'),
            ],
          ),
          Column(
            children: [
              MessageStory('https://cdn2.vectorstock.com/i/1000x1000/32/01/user-sign-icon-person-symbol-human-avatar-vector-12693201.jpg', 'Refka Aissa', 'I appreciate my work'),
              MessageStory('https://cdn2.vectorstock.com/i/1000x1000/32/01/user-sign-icon-person-symbol-human-avatar-vector-12693201.jpg', 'Refka Aissa', 'Thanks GOD')
            ],
          )
        ],
        
      ),
    );
  }
}


class ProfileStory extends StatelessWidget {
  final String image;
  final String name;
  const ProfileStory(this.image,this.name,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      foregroundImage: NetworkImage('$image'),
                      maxRadius: 40,
                    ),
                    Text ('$name'),
                  ],

                ),
              );
  }
}

class MessageStory extends StatelessWidget {
  final String image;
  final String name;
  final String message;

  const MessageStory(this.image,this.name,this.message,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage: NetworkImage('$image'),
                      maxRadius: 50 ,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$name'),
                        Text('$message'),
                      ],
                    )
                  ],
                ),
              );
}
                