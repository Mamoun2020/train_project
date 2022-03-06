

import 'package:flutter/material.dart';
import 'package:login_project/shared/components/components.dart';
import 'package:login_project/shared/components/constants.dart';
import 'package:login_project/shared/cubit/cubit.dart';

class NewTasksScreen extends StatefulWidget{
  @override
  _NewTasksScreenState createState() => _NewTasksScreenState();
}

class _NewTasksScreenState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) => buildTaskItem(AppCubit.get(context).tasksCubit[index]),
      separatorBuilder:(context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(
          start:20.0,
        ),
        child: Container(
        width: double.infinity,
        height: 1.0,
        color:Colors.grey[300],
        ),
      ),
      // itemCount: tasks.length,
      itemCount: AppCubit.get(context).tasksCubit.length,
    );
   // return Center(
   //   child: Text(
   //     'New Tasks',
   //     style: TextStyle(
   //        fontSize: 25.0,
   //        fontWeight:FontWeight.bold,
   //     ),
   //   ),
   // );
  }
}