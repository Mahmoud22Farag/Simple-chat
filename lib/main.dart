import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),

          ],
        ),
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/profile.jpeg"),
            ),
            Text('Person'),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.videocam_sharp),
            onPressed: () {
              // Implement video call functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              // Implement call functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement file attachment functionality
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("assets/user1.jpeg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7,left: 7,top: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white70),
                                borderRadius: BorderRadius.all(Radius.circular(66)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'This is my first message',
                                  labelStyle: TextStyle(
                                    color: Colors
                                        .white70, // Specify your desired color here
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right:7,left: 7),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 300,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70),
                              borderRadius: BorderRadius.all(Radius.circular(66)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'This is my second message',
                                labelStyle: TextStyle(
                                  color: Colors.white70,
                                ),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white70, // Set the desired border color here
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("assets/user2.jpeg"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 530,
              ),
              Row(
                children: [
                  Container(
                    width: 330,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.all(Radius.circular(66)),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.emoji_emotions_outlined,color: Colors.white70,),
                        title: Text(' Type a Message',style: TextStyle(color: Colors.white70),),
                        trailing: Icon(Icons.attach_file,color: Colors.white70,),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70),
                      borderRadius: BorderRadius.all(Radius.circular(66)),
                    ),
                    child: Icon(
                      Icons.keyboard_voice,
                      color: Colors.white70, // Set the color here
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
