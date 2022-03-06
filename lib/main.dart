import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:login_project/insta_screen.dart';
import 'package:login_project/modules/users/users_screen.dart';
import 'package:login_project/shared/bloc_observer.dart';

import 'layout/home_layout.dart';
import 'layout/home_layout2.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';
import 'new_insta_screen.dart';
import 'new_messenger_screen.dart';


// time
// refactor
// quality
// clean code
void main() {
  // Bloc.observer = MyBlocObserver();
  BlocOverrides.runZoned(
        () {
          runApp(MyApp());
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewHomeLayout(),
    );
  }
}

