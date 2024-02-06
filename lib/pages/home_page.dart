import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/patients.dart';
import 'package:flutter_app/widgets/doctor_note.dart';
import 'package:flutter_app/widgets/audio_transcription.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final title = "Home Page"

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  var patients = <Map<String, Object>>[
    {"name": "John", "age": 26, "gender": "Male"},
    {"name": "Jane", "age": 26, "gender": "Female"},
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        body: Container(
      // decoration: BoxDecoration(
      // border: Border.all(width: 10, color: theme.colorScheme.primary),
      // borderRadius: const BorderRadius.all(Radius.circular(8)),
      // ),
      margin: const EdgeInsets.all(4),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Patients(patients: patients),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '🚀 ExarCoPilot',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: DoctorNote(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: AudioTranscription(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
