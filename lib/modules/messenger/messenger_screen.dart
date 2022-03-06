
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        backgroundColor:Colors.black,
        elevation: 0.0,
        titleSpacing: 20.0,
        title:
          Row(
            children:[
              CircleAvatar(
                radius : 20.0,
                backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4E03AQEctB_YtfXoNg/profile-displayphoto-shrink_200_200/0/1643575288150?e=1649289600&v=beta&t=AJ6JT9JMIjHaKFmlkwcqxJTozm9k9cmDspVewhXLKPw',
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Chats',
                style: TextStyle(
                  color:Colors.white,
                ),
              ),
            ],
          ),
        actions:[
          IconButton(
      icon:
           CircleAvatar(
              radius : 15.0,

             backgroundColor: Colors.white10,
             child: Icon(
                Icons.camera_alt,
               size: 16.0,
               color:Colors.white,
              ),
           ),
              onPressed:(){},
            ),
          IconButton(
            icon:
            CircleAvatar(
              radius : 15.0,
              backgroundColor: Colors.white10,
              // backgroundColor: Colors.black.withOpacity(0.6),
              child: Icon(
                Icons.edit,
                size: 16.0,
                color:Colors.white,
              ),
            ),
            onPressed:(){},
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    15.0,
                ),
                // color:Colors.grey[200],
                color:Colors.white10,
              ),
              padding: const EdgeInsets.all(
                7.0,
              ),
              child: Row(
                children:[
                  Icon(
                    Icons.search,
                    color:Colors.white70,
                  ),
                  SizedBox(
                    width:15.0,
                  ),
                  Text(
                    'Search',
                    style:TextStyle(
                      color:Colors.white70,
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(
              height:20.0,
            ),
            SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width:70.0,
                    child: Column(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:TextStyle(

                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:15.0,
                  ),
                  Container(
                    width:70.0,
                    child: Column(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:TextStyle(

                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:15.0,
                  ),
                  Container(
                    width:70.0,
                    child: Column(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:TextStyle(

                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:15.0,
                  ),
                  Container(
                    width:70.0,
                    child: Column(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:TextStyle(

                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:15.0,
                  ),
                  Container(
                    width:70.0,
                    child: Column(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Text(
                          'Mohamed Gawdat Gawdat',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:TextStyle(

                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height:20.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      children:[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(
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
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Text(
                                'Mohamed Gawadat',
                                style:TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height:7.0,
                              ),
                              Row(
                                children:[
                                  Expanded(
                                    child: Text(
                                      'Hello, my name is Mohamed Gawadat',
                                      style:TextStyle(
                                        color: Colors.white70,
                                      ),
                                      maxLines:1,
                                      overflow:TextOverflow.ellipsis,
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
                                    '02:00 pm',
                                    style:TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
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