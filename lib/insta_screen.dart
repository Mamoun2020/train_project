
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_project/shared/components/components.dart';

class InstagramScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        titleSpacing: 10.0,
        backgroundColor:Colors.black,
        elevation: 0.0,
        leading:
        Icon(
          Icons.arrow_back,
          size:32,
        ),
        title:
        Row(
          children: [
            Text(
              'mamoun_ka21',
            ),
            Icon(
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 5.0,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.video_call_outlined,
                  size:42,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.add,
                  size:42,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    15.0,
                ),
                color:Colors.brown.withOpacity(0.3),
              ),
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Row(
                children:[
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                      start: 5.0,
                    ),
                    child: Icon(
                      Icons.search,
                      color:Colors.white70,
                    ),
                  ),
                  SizedBox(
                    width:20.0,
                  ),
                  Text(
                    'Search',
                    style:TextStyle(
                      color:Colors.white70,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:20.0,
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    width:70.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:40.0,
                              backgroundImage:
                                NetworkImage(
                                  'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',

                                ),
                            ),
                            CircleAvatar(
                              radius:9.5,
                              backgroundColor: Colors.black,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3.0,
                                end:3.0,
                              ),
                              child: CircleAvatar(
                                radius:7.0,
                                backgroundColor:Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:7.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          style:TextStyle(
                            color:Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:20.0,
            ),
            Row(
              children:[
                Expanded(
                  flex: 3,
                  child: Text(
                    'Messages',
                    style:TextStyle(
                      fontSize:18.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                ),
                defaultTextButton(
                    function: (){},
                    text: 'Requests',
                    isUpper: false,
                ),
                // TextButton(onPressed:(){},
                //     child: Text(
                //       'Requests',
                //       style:TextStyle(
                //         fontSize:18.0,
                //       ),
                //     ),
                // ),
              ],
            ),
            SizedBox(
              height:15.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                  'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4E03AQFgDJ5hUWGh9w/profile-displayphoto-shrink_800_800/0/1634158786391?e=1649289600&v=beta&t=wxWxjW-rFgWNemJSGvjMffZkPkSrv-1Q9HZPwdXH2lM',
                          ),
                        ),
                        SizedBox(
                          width:15.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Gawdat',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:16.0,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hello',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:3.0,
                                    ),
                                    child: Container(
                                      width: 3.0,
                                      height:3.0,
                                      decoration: BoxDecoration(
                                        color:Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2h',
                                    style:TextStyle(
                                      color:Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color:Colors.white,
                          size:32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}