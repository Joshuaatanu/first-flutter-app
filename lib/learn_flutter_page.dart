import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("actions");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const RootPage();
              },
            ),
          );
        },
        child: const Icon(Icons.home),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/buhari.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(
                10.0,
              ),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "this is a text widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint("this is a my button");
              },
              child: const Text("press me"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("this is a outlined");
              },
              child: const Text("press me"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("this is textbutton");
              },
              child: const Text("press me"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("gesture registeres");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.blueAccent),
                  Text("hola"),
                  Icon(Icons.local_fire_department, color: Colors.blueAccent),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              },
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/220px-Elon_Musk_Royal_Society_%28crop2%29.jpg')
          ],
        ),
      ),
    );
  }
}
