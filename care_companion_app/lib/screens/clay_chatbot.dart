import 'package:care_companion_app/widgets/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class ClayChat extends StatefulWidget {
  const ClayChat({super.key});

  @override
  State<ClayChat> createState() => _ClayChatState();
}

class _ClayChatState extends State<ClayChat> {
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
                              child: CircleAvatar(
                                radius: 75,
                                backgroundColor:
                                    Color.fromARGB(255, 202, 66, 116),
                                child: CircleAvatar(
                                  foregroundImage: AssetImage(
                                      'assets/images/clayHeadshot.png'),
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
                      child: Text('Clay',
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
                          backgroundColor: Color.fromARGB(255, 202, 66, 116),
                          elevation: 0,
                        ),
                        child: Text('Hospice Care'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 202, 66, 116),
                          elevation: 0,
                        ),
                        child: Text('End of Life'),
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
                        height: 285,
                        width: 318,
                        child: const Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Text(
                                'Meet Clay, a 66-year-old veteran with terminal lung cancer, as he comes to terms with his diagnosis. Clay transitions to hospice care and, as he enters the final stage of life, understands the importance of clear, compassionate communication about end-of-life decisions and about what to expect in the final days. \n\nTalk with Clay about end-of-life symptom presentation, management, and control.',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
