import 'package:flutter/material.dart';
import 'package:to_do_flutter_assignment_1/screens/taskBoard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 250),
            const Text('Welcome to'),
            const Text(
              'Plan IT',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 270),
            const Text(
              'Your Personal task management\nand planning solution',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 60)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black87),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TaskBoard();
                  }));
                },
                child: Text(
                  'Let\'s get started',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ))
          ],
        ),
      ),
    );
  }
}
