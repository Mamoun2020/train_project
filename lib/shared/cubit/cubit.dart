
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_project/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/archived_tasks/archived_tasks_screen.dart';
import '../../modules/done_tasks/done_tasks_screen.dart';
import '../../modules/new_tasks/new_tasks_screen.dart';

class AppCubit extends Cubit<AppStates>{
  List<Map> tasksCubit = [];
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles =[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  void changeIndex(int index){
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
  late Database database;
  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 2,
      onCreate:(database,version) async {
        print('database created');
        await database.execute('CREATE TABLE TASKS (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, date TEXT, time TEXT, status TEXT)').then(
                (value) {
              print('table created');
            }
        ).catchError((onError){
          print('ERROR : ${onError}');
        });

      },
      onOpen: (database){
        getDataFromDatabase(database).then((value) {
          // setState((){
            tasksCubit = value;
          // });
             print(tasksCubit);
             emit(AppGetDatabaseState());
          // print(tasks[0]);
          // print(tasks[0]['title']);
        });
        print('database opened');
      },
    ).then((value) {
        database = value;
        emit(AppCreateDatabaseState());
        return value;
    });
  }
  Future insertToDatabase({
  required String title,
  required String date,
  required String time,}) async {
    await database.transaction((txn)
    {
      txn.rawInsert('INSERT INTO TASKS(title, date, time, status) VALUES("$title", "$date", "$time", "Done")').then(
              (value) {
            print('$value inserted successfully');
            emit(AppInsertDatabaseState());
            getDataFromDatabase(database).then((value){
              tasksCubit = value;
              print(tasksCubit);
              emit(AppGetDatabaseState());
            });
          }).catchError((onError){
      });
      return null!;
    });

  }

  Future<List<Map>> getDataFromDatabase(database) async {
    return await  database.rawQuery("SELECT * FROM TASKS");
  }
  bool isBottomSheetShown = false;
  IconData iconFloatingAtBottom =Icons.edit;
  void changeBottomSheetState({
    required bool isShow,
    required IconData icon,
}){
    isBottomSheetShown = isShow;
    iconFloatingAtBottom=icon;
    emit(AppChangeBottomSheetState());
  }
}

