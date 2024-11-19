import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/save_task.dart';
import 'package:to_do_app/models/task_model.dart';


class AddTodo extends StatelessWidget{
  AddTodo({super.key});

final Controller =TextEditingController();

@override

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('Add Todo'),
    ),
    body:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: Controller,
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(onPressed:() {
            context.read<SaveTask>().addTask(
              Task(title: Controller.text,
              iscompleted: false,
              ),
            );
            Controller.clear();
            Navigator.of(context).pop();
          }, child:const Text('Add'))
        ],
      ),

    )
  );
}
}