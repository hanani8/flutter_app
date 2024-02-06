import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  const Patients({
    super.key,
    required this.patients,
  });

  final List<Map<String, Object>> patients;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              // Add your logic here
            },
            icon: Icon(Icons.add),
            label: Text('Add Patient'),
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), // Add this line
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: 1,
            child: ListView.separated(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                itemCount: patients.length,
                itemBuilder: (context, index) {
                  final patient = patients[index];
                  bool selected = false;
                  return ListTile(
                    selectedColor: Colors.white,
                    selectedTileColor: theme.primaryColor,
                    selected: selected,
                    onTap: () {
                      selected = true;
                    },
                    title: Text(patient["name"] as String),
                    subtitle: Text(
                        'Gender: ${patient["gender"]}, Age: ${patient['age']}'),
                  );
                },
                separatorBuilder: (context, index) => const Divider()),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Dr. Gaurav'),
                  subtitle: Text('dgaurav@mail.in'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
