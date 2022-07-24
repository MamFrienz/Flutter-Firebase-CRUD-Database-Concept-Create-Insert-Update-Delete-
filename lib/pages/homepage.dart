import 'package:database_concept/pages/addStudentPage.dart';
import 'package:database_concept/pages/listStudentPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Database Concept",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddStudentPage())),
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 238, 230, 230)),
              child: const Text("insert", style: TextStyle(fontSize: 20.00)),
            ),
          ],
        ),
      ),
      body: const ListStudentPage(),
    );
  }
}
