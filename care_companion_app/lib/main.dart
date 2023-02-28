import 'package:flutter/material.dart';
//import 'package:kommunicate_flutter/kommunicate_flutter.dart';
//import 'package:flutter_dialogflow/flutter_dialogflow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Care Companion App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  // int _selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   // Index 0: Home
  //   Text(
  //     'Index 0: Home',
  //     //style: optionStyle,
  //   ),
  //   // Index 1: Alfred
  //   Text(
  //     'Index 1: Alfred Chatbot',
  //     //style: optionStyle,
  //   ),
  //   // Index 2: Beatriz
  //   Text(
  //     'Index 2: Beatriz Chatbot',
  //     //style: optionStyle,
  //   ),
  //   // Index 3: Clay
  //   Text(
  //     'Index 3: Clay Chatbot',
  //     //style: optionStyle,
  //   ),
  //   // Index 4: Dima
  //   Text(
  //     'Index 4: Dima Chatbot',
  //     //style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
                padding: EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(3, 3, 0, 0),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: Image.asset(
                            'assets/images/el-logo-white-r@2x.png',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: Container(
                        child: IconButton(
                          icon: const Icon(Icons.settings_outlined),
                          color: Colors.white,
                          iconSize: 40,
                          onPressed: () {
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
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                      child: Text(
                        'Hello, [Name]!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          wordSpacing: 2,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
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
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          child: Text(
                            'Welcome to the Embodied Labs chatbot library. Choose who you would like to speak with below:',
                            style: TextStyle(
                              wordSpacing: 2,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blueGrey.withAlpha(30),
                            onTap: () {
                              debugPrint('Alfred card tapped.');
                            },
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: const [
                                ListTile(
                                  leading: CircleAvatar(
                                    maxRadius: 35,
                                    foregroundImage: AssetImage(
                                        'assets/images/alfredHeadshot.png'),
                                  ),
                                  title: Text(
                                    'Alfred',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Sensorial Impairments'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blueGrey.withAlpha(30),
                            onTap: () {
                              debugPrint('Beatriz card tapped.');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/beatrizHeadshot.png'),
                                    maxRadius: 35,
                                  ),
                                  title: Text(
                                    'Beatriz',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Memory Care'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blueGrey.withAlpha(30),
                            onTap: () {
                              debugPrint('Clay card tapped.');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/clayHeadshot.png'),
                                    maxRadius: 35,
                                  ),
                                  title: Text(
                                    'Clay',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Hospice'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blueGrey.withAlpha(30),
                            onTap: () {
                              debugPrint('Dima card tapped.');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/dimaHeadshot.png'),
                                    maxRadius: 35,
                                  ),
                                  title: Text(
                                    'Dima',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('Assisted Care'),
                                ),
                              ],
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
      ),
    );
  }
}
