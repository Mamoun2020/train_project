import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_project/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:login_project/modules/done_tasks/done_tasks_screen.dart';
import 'package:login_project/modules/new_tasks/new_tasks_screen.dart';
import 'package:login_project/shared/components/components.dart';
import 'package:login_project/shared/components/constants.dart';
import 'package:login_project/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';

import '../shared/cubit/cubit.dart';
// 1. Create DB & create Table
// 2. Open DB
// 3. insert to database
// 4. get from database
// 5. update in database
// 6. delete from database
class NewHomeLayout extends StatelessWidget{
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   createDatabase();
  // }
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
     create: (BuildContext context) =>AppCubit()..createDatabase(),
     child: BlocConsumer<AppCubit,AppStates>(
       listener: (BuildContext context,AppStates state) {
          if(state is AppInsertDatabaseState){
            Navigator.pop(context);
          }
       },
       builder:(BuildContext context,AppStates state){
         AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          key: scaffoldkey,
          appBar:AppBar(
            title:Text(
              // 'Todo App',
              '${cubit.titles[cubit.currentIndex]}',
            ),
            actions:[
              buildPopupMenuButton(
                  elevation:5.0,
                  itemBuilder: (context){
                    return [
                      PopupMenuItem(child: Text('about'),),
                    ];
                  }
              ),
              PopupMenuButton<int>(
                elevation: 8.0,
                icon:Icon(Icons.more_horiz_sharp),
                iconSize:24.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                tooltip: 'Menu',
                offset: Offset(0,40),
                color:Colors.white,
                onSelected: (value){
                  switch(value){
                    case 1: print(value);break;
                    case 2: print(value);break;
                  }
                },
                itemBuilder: (context){
                  return [
                    PopupMenuItem(
                      child: Text('About'),
                      value: 1,
                      onTap: (){},
                    ),
                    PopupMenuItem(
                      child:Text('Logout'),
                      value:2,
                    )
                  ];
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            // onPressed:() async {
            onPressed:(){
              // try{
              //   var name = await getName();
              //   print(name);
              //   // throw('some error !!!!');
              // } catch(error){
              //   print('error ${error.toString()}');
              // }

              // insertToDatabase();

              //  getName().then((value){
              //    print(value);
              //    print('Osama');
              //    throw('error make');
              //  }).catchError((error){
              //    print('error is ${error.toString()}');
              //  });
              if(cubit.isBottomSheetShown){
                if(formKey.currentState!.validate()){

                  cubit.insertToDatabase(
                    title: titleController.text,
                    date: dateController.text,
                    time: timeController.text,
                  ).then((value){
                    cubit.getDataFromDatabase(cubit.database).then((value) {

                      // setState((){
                      //   isBottomSheetShown = false;
                      //   iconFloatingAtBottom = Icons.edit;
                      //   setState((){
                      //     tasks = value;
                      //   });
                      //   print('tasks : $tasks');
                      // });

                      // print(tasks);
                      // print(tasks[0]);
                      // print(tasks[0]['title']);
                    });
                  });

                }

              }
              else{
                scaffoldkey.currentState!.showBottomSheet(
                      (context) => Container(
                    color: Colors.grey[100],
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key:formKey,
                      child: Column(
                        mainAxisSize:MainAxisSize.min,
                        children: [
                          defaultTextFormField(
                            textController: titleController,
                            textInputField: TextInputType.text,
                            validate: (String? value) {
                              if(value!.isEmpty){
                                return 'Title must not be empty';
                              }
                              return null;
                            },
                            label: 'Task Title',
                            icons: Icons.title,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultTextFormField(
                            textController: timeController,
                            textInputField: TextInputType.datetime,
                            // isClickable: false,
                            validate: (String? value) {
                              if(value!.isEmpty){
                                return 'Time must not be empty';
                              }
                              return null;
                            },
                            label: 'Task Time',
                            icons: Icons.watch_later,
                            onTap:(){
                              showTimePicker(context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                timeController.text = value!.format(context).toString();
                              });
                            },
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultTextFormField(
                            textController: dateController,
                            textInputField: TextInputType.datetime,
                            // isClickable: false,
                            validate: (String? value) {
                              if(value!.isEmpty){
                                return 'Date must not be empty';
                              }
                              return null;
                            },
                            label: 'Task Date',
                            icons: Icons.date_range,
                            onTap:(){
                              showDatePicker(context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2022-05-03'),
                              ).then((value) {
                                dateController.text =DateFormat.yMMMd().format(value!);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  elevation: 15.0,
                ).closed.then((value) {
                  cubit.changeBottomSheetState(isShow: false, icon:Icons.edit);
                  // isBottomSheetShown = false;
                  // setState((){
                  //   iconFloatingAtBottom = Icons.edit;
                  // });
                });
                // isBottomSheetShown = true;
                cubit.changeBottomSheetState(isShow: true, icon:Icons.add);
                // setState((){
                //   iconFloatingAtBottom = Icons.add;
                // });
              }

            },
            child:Icon(
             cubit.iconFloatingAtBottom,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: AppCubit.get(context).currentIndex,
            type:BottomNavigationBarType.fixed,
            onTap:(index){
              // setState( () => currentIndex = index);
              cubit.changeIndex(index);
              print(index);
            },
            items:
            [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,

                ),
                label:'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.check,

                ),
                label:'Done',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.archive_outlined,

                ),
                label:'Archived',
              ),
            ],
          ),
          body:ConditionalBuilder(
            condition: true,
            builder:(context) => cubit.screens[cubit.currentIndex],
            fallback:(context) => Center(child: CircularProgressIndicator()),
          ),
          // body: tasks.length ==0 ? Center(child: CircularProgressIndicator()):screens[currentIndex],
        );
       },
     ),
   );
  }

  Future<String> getName() async
  {
    return 'Ahmed Ali';
  }

}