import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class TaskBoard extends StatefulWidget {
  const TaskBoard({super.key});

  @override
  State<TaskBoard> createState() => _TaskBoardState();
}

class _TaskBoardState extends State<TaskBoard> {
  List toDoItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Board'),
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: ListView.builder(
              itemCount: toDoItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Task ${index + 1}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'Your Personal task management and planning solution for planning your day, week & months',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text(toDoItems[index].toString())],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            DateTime currentTime = DateTime.now();
            String formattedDate =
                DateFormat('hh:mm a d MMMM, yyyy').format(currentTime);
            toDoItems.add(formattedDate);
          });
        },
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
