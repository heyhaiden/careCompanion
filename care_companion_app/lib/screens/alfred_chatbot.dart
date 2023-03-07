import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'dart:convert';

class AlfredChat extends StatefulWidget {
  const AlfredChat({super.key});

  @override
  State<AlfredChat> createState() => _AlfredChatState();
}

class _AlfredChatState extends State<AlfredChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 3, 0, 0),
                      child: Container(
                          //width: MediaQuery.of(context).size.width * 0.28,
                          child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                              iconSize: 40,
                              onPressed: () {
                                Navigator.of(context).pop();
                              })),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Container(
                              child: CircleAvatar(
                                radius: 75,
                                backgroundColor:
                                    Color.fromARGB(255, 211, 90, 53),
                                child: CircleAvatar(
                                  foregroundImage: AssetImage(
                                      'assets/images/alfredHeadshot.png'),
                                  radius: 70,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        child: IconButton(
                          icon: const Icon(Icons.settings_outlined),
                          color: Colors.white,
                          iconSize: 40,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog(
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
                                      // ListTile(
                                      //   title: Text('Privacy:'),
                                      //   trailing: ElevatedButton(
                                      //     onPressed: () {
                                      //       null;
                                      //     },
                                      //     child: Text('Delete Account'),
                                      //     style: ElevatedButton.styleFrom(
                                      //         backgroundColor: Colors.red),
                                      //   ),
                                      // ),
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Text('Alfred',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          elevation: 0,
                        ),
                        child: Text('Macular Degeneration'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          elevation: 0,
                        ),
                        child: Text('Hearing Loss'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        height: 250,
                        width: 340,
                        //width: MediaQuery.of(context).size.width * 0.8,
                        child: Card(
                          color: Colors.white,
                          elevation: 0,
                          child: Placeholder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: FloatingActionButton.extended(
                  onPressed: () async {
                    try {
                      dynamic conversationObject = {
                        'appId': '10b908ed84a81f3eceb849464c54f0861',
                        'isSingleConversation': false,
                      };
                      dynamic result =
                          await KommunicateFlutterPlugin.buildConversation(
                              conversationObject);
                      print(
                          'Conversation builder success :' + result.toString());
                    } on Exception catch (e) {
                      print('Conversation builder error occurred :' +
                          e.toString());
                    }
                  },
                  tooltip: 'Increment',
                  label: Text('New conversation'),
                  icon: const Icon(Icons.add),
                  backgroundColor: Color.fromARGB(255, 211, 90, 53),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
