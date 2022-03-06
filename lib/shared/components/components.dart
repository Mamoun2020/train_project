import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity  ,
  Color background =Colors.blue,
  required Function function,
  required String text
}) => Container(
  width: width,
  color: background ,
  // height:40.0,
  child: MaterialButton(
    onPressed: function(),
    child: Text(text.toUpperCase(),
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultTextButton({
  required Function? function,
  required String text,
  double fontSize = 18.0,
  bool isUpper = true,
}
    ) =>
TextButton(onPressed:function!(),
    child: Text(
      isUpper ? text.toUpperCase() : text,
      style:TextStyle(
        fontSize: fontSize,
      ),
    ),
  );
Widget defaultTextFormField({
    required TextEditingController textController,
    required TextInputType textInputField,
    required FormFieldValidator<String> validate,
    required String label,
    required IconData icons,
    GestureTapCallback? onTap,
}) =>
    TextFormField(
      controller:textController,
      keyboardType: textInputField,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        //hintText
        prefixIcon: Icon(
          icons,
        ),
        border:OutlineInputBorder(),//border:InputBorder.none,
        // labelText  there is different not hidden text in label (hint text)
      ),
      onTap: onTap,

    );
Widget buildTaskItem(Map model)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [

      CircleAvatar(
        radius:40.0,
        child:Text(
          '${model['time']}',
        ),
      ),
      SizedBox(
        width:20.0,
      ),
      Column(
        mainAxisSize:MainAxisSize.min,
        children:[
          Text('${model['title']}',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight:FontWeight.bold,
            ),
          ),
          Text('${model['date']}',
            style: TextStyle(
              color:Colors.grey,
            ),
          ),

        ],
      ),
    ],
  ),
);

Widget buildPopupMenuButton({
  required PopupMenuItemBuilder<int> itemBuilder,
  double elevation = 4.0,
}) => PopupMenuButton<int>(
itemBuilder: itemBuilder,
  elevation: elevation,
);