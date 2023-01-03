import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
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
      body: Column(
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
            onPressed: () {
              debugPrint("this is a my button");
            },
            child: const Text("press me"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("this is a my button");
            },
            child: const Text("press me"),
          )
        ],
      ),
    );
  }
}
