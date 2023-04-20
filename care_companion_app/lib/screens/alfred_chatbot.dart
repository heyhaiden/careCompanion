import 'package:flutter/material.dart';
import 'package:care_companion_app/widgets/settings_dialog.dart';

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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Container(
                              child: const CircleAvatar(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                          backgroundColor: Color.fromARGB(230, 211, 90, 53),
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
                          backgroundColor: Color.fromARGB(230, 211, 90, 53),
                          elevation: 0,
                        ),
                        child: Text('Hearing Loss'),
                      ),
                    ),
                  ],
                ),
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
                        height: 275,
                        width: 318,
                        child: const Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Text(
                                'Meet Alfred, a 74-year-old African American man with macular degeneration and high-frequency hearing loss as he spends time with family, visits the doctor, and receives a diagnosis. \n\nAs Alfred goes about his daily life, the learner will understand how deficits in hearing and vision affect communication and impact emotional wellbeing.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: .3,
                                  wordSpacing: 1.5,
                                ),
                                textAlign: TextAlign.left,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  tooltip: 'Increment',
                  elevation: 0,
                  label: const Text('Coming soon'),
                  icon: const Icon(Icons.calendar_month_outlined),
                  backgroundColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
