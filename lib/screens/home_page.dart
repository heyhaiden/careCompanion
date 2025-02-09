import 'package:flutter/material.dart';

import 'package:CareCompanion/screens/beatriz_chatbot.dart';
import 'package:CareCompanion/screens/clay_chatbot.dart';
import 'package:CareCompanion/screens/dima_chatbot.dart';
import 'package:CareCompanion/screens/alfred_chatbot.dart';
import 'package:CareCompanion/widgets/settings_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/appBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 30, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(3, 3, 0, 0),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Image.asset(
                              'assets/images/el-logo-white-r@2x.png',
                            )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Container(
                          child: IconButton(
                            icon: const Icon(Icons.settings_outlined),
                            color: Colors.white,
                            iconSize: 40,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const SettingsDialog();
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 40, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Text(
                          'Hello!',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            child: const Text(
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AlfredChat()),
                                );
                                debugPrint('Alfred card tapped.');
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                                      trailing: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BeatrizChat()),
                                );
                                debugPrint('Beatriz card tapped.');
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                                      trailing: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ClayChat()),
                                );
                                debugPrint('Clay card tapped.');
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                                      trailing: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 10, 25, 5),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DimaChat()),
                                );
                                debugPrint('Dima card tapped.');
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                                      trailing: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 32, 25, 0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
