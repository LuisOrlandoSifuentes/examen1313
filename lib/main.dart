import 'package:flutter/material.dart';

void main() => runApp(Examen());

class Examen extends StatelessWidget {
  const Examen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {"name": "Junaid Durrani", "role": "Programmer"},
    {"name": "Ahmed Khan", "role": "Data Scientist"},
    {"name": "Aqib", "role": "Project Manager"},
    {"name": "Zaid", "role": "Team Leader"},
    {"name": "Saqib", "role": "Developer"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("ListViews Sifuentes1313"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color:
                            Colors.grey.withOpacity(0.5), // Sombra en el borde
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      title: Text(
                        users[index]['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(users[index]['role']!),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text("Invite"),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
