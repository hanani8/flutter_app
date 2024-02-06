import 'package:flutter/material.dart';

class AudioTranscription extends StatelessWidget {
  const AudioTranscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 900,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Audio Transcription',
                        style: theme.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Divider(), // Add a divider here
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              color: Colors.white, // Set the background color to white
              child: SizedBox.expand(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: () {
                    // Add your logic here
                  },
                  icon: Row(
                    children: [
                      Icon(Icons.mic),
                      SizedBox(width: 8),
                      Icon(Icons.link),
                    ],
                  ),
                  label: Text('Record/Resume'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
