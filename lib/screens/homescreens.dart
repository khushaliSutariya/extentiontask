import 'package:extentiontask/model/users.dart';
import 'package:flutter/material.dart';
class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  //.any
  final users = [Users(name: "Kasey",age: 22), Users(name: "Jadn",age: 23)];
  bool get isKaseyPresent => users.any((u) => u.name == 'khushi');
  void printResult() {
    print('Is Kasey present? $isKaseyPresent');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(isKaseyPresent ? 'Kasey is present!' : 'Kasey is not present!',),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: printResult,
            child: const Text('Print Result'),
          ),
    ],
      ),
    );
  }
}
