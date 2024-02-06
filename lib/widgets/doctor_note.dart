import 'package:flutter/material.dart';

class DoctorNote extends StatelessWidget {
  const DoctorNote({
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
                    child: Text('Doctor\'s Note',
                        style: theme.textTheme.titleLarge!
                            .copyWith(fontWeight: FontWeight.bold)),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your logic here
                  },
                  icon: Icon(Icons.add),
                  label: Text('Edit'),
                ),
                FilledButton.icon(
                  onPressed: () {
                    // Add your logic here
                  },
                  icon: Icon(Icons.generating_tokens),
                  label: Text(
                    'Generate Note',
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your logic here
                  },
                  icon: Icon(Icons.download),
                  label: Text('Doctor\'s Note'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
