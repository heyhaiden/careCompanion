import 'package:flutter/material.dart';

class BeatrizChat extends StatefulWidget {
  const BeatrizChat({super.key});

  @override
  State<BeatrizChat> createState() => _BeatrizChatState();
}

class _BeatrizChatState extends State<BeatrizChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 30, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                              iconSize: 37,
                              onPressed: () {
                                Navigator.of(context).pop();
                              })),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: Container(
                        child: IconButton(
                          icon: const Icon(Icons.settings_outlined),
                          color: Colors.white,
                          iconSize: 40,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Settings'), // change title
                                    content: Text(
                                        'Customize your app experience using the settings below:'),
                                    actions: <Widget>[
                                      ListTile(
                                        title: Text('Language:'),
                                        trailing: Text(
                                          'English',
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Text Size:'),
                                        trailing: Text(
                                          'Regular',
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Text to Speech:'),
                                        trailing: Text(
                                          'Off',
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Privacy:'),
                                        trailing: ElevatedButton(
                                          onPressed: () {
                                            null;
                                          },
                                          child: Text('Delete Account'),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                            debugPrint('Settings tapped.');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.blue,
                          child: CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/beatrizHeadshot.png'),
                            radius: 70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text('Beatriz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            wordSpacing: 2,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Card(
                        child: Text('Hello.'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
