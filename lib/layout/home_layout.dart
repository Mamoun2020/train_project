import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_project/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:login_project/modules/done_tasks/done_tasks_screen.dart';
import 'package:login_project/modules/new_tasks/new_tasks_screen.dart';
import 'package:login_project/shared/components/components.dart';
import 'package:login_project/shared/components/constants.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';
class HomeLayout extends StatefulWidget{
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}
// 1. Create DB & create Table
// 2. Open DB
// 3. insert to database
// 4. get from database
// 5. update in database
// 6. delete from database
class _HomeLayoutState extends State<HomeLayout> {
  List<Map> tasks = [];
  int currentIndex = 0;
  late Database database;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  IconData iconFloatingAtBottom =Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

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
  @override
  void initState() {
    super.initState();
    createDatabase();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: scaffoldkey,
    appBar:AppBar(
      title:Text(
        // 'Todo App',
        '${titles[currentIndex]}',
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
          if(isBottomSheetShown){
            if(formKey.currentState!.validate()){
              insertToDatabase(
                 title: titleController.text,
                 date: dateController.text,
                 time: timeController.text,
              ).then((value){
                getDataFromDatabase(database).then((value) {
                  Navigator.pop(context);
                  setState((){
                    isBottomSheetShown = false;
                    iconFloatingAtBottom = Icons.edit;
                    setState((){
                      tasks = value;
                    });
                    print('tasks : $tasks');
                  });

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
              isBottomSheetShown = false;
              setState((){
                iconFloatingAtBottom = Icons.edit;
              });
            });
            isBottomSheetShown = true;
            setState((){
              iconFloatingAtBottom = Icons.add;
            });
          }

       },
       child:Icon(
         iconFloatingAtBottom,
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: currentIndex,
       type:BottomNavigationBarType.fixed,
       onTap:(index){
         setState( () => currentIndex = index);
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
     body:ConditionalBuilder(condition: tasks.length >0,
       builder:(context) => screens[currentIndex],
       fallback:(context) => Center(child: CircularProgressIndicator()),
     ),
     // body: tasks.length ==0 ? Center(child: CircularProgressIndicator()):screens[currentIndex],
   );
  }
  Future<String> getName() async
  {
    return 'Ahmed Ali';
  }
    Future<void> createDatabase() async {
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
           setState((){
             tasks = value;
           });

           // print(tasks);
           // print(tasks[0]);
           // print(tasks[0]['title']);
         });
         print('database opened');
     },
     );
  }
  Future insertToDatabase({
  required String title,
  required String date,
  required String time,
}) async {
      return await database.transaction((txn)
      async {
        await txn.rawInsert('INSERT INTO TASKS(title, date, time, status) VALUES("$title", "$date", "$time", "Done")').then(
                (value) {
                    print('$value inserted successfully');
                }).catchError((onError){

        });
        return null;
      });
  }
  Future<List<Map>> getDataFromDatabase(database) async {
    return await  database.rawQuery("SELECT * FROM TASKS");
  }
}