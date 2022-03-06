import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_project/shared/components/components.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController= TextEditingController();

  var passwordController= TextEditingController();

  // var formKey = GlobalKey<FormState>();
  var _formKey = GlobalKey<FormState>();
  bool visiblePassword = true;
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar:AppBar(

     ),
     body:
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Center(
         child: SingleChildScrollView(
           child: Form(
             key:_formKey,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style:TextStyle(
                    fontSize:40.0,
                    fontWeight:FontWeight.bold,
                  ) ,
                ),
                SizedBox(
                  height:40.0,
                ),
                TextFormField(
                  controller:emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted:(value){
                    print(value);
                  },
                  onChanged:(value){
                    print(value);
                  },
                  validator: (String? value){
                    if(value!.isEmpty){
                      return "email address must not be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    //hintText
                    prefixIcon: Icon(
                      Icons.email,
                    ),

                    border:OutlineInputBorder(),//border:InputBorder.none,
                    // labelText  there is different not hidden text in label (hint text)
                  ),

                ),
                SizedBox(
                  height:10.0,
                ),
                TextFormField(
                  controller:passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: visiblePassword,
                  onFieldSubmitted:(value){
                    print(value);
                  },
                  onChanged:(value){
                    print(value);
                  },
                  validator:(String? value){
                    if(value!.isEmpty){
                      return "password must be not empty";
                    }
                      return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    //hintText
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon:IconButton(
                      icon:Icon(
                        visiblePassword ? Icons.visibility :Icons.visibility_off,
                      ),
                      onPressed:(){
                        setState(() => visiblePassword = !visiblePassword,
                        );
                      },
                    ) ,
                    border:OutlineInputBorder(),//border:InputBorder.none,
                    // labelText  there is different not hidden text in label (hint text)
                  ),
                ),
                SizedBox(
                  height:20.0,
                ),
                Container(
                   width:double.infinity,
                  color: Colors.blue,
                  // height:40.0,
                  child: MaterialButton(
                    onPressed:(){
                      if(_formKey.currentState!.validate()){
                            print(emailController.text);
                            print(passwordController.text);
                          }
                  },
                    child: Text('LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // defaultButton(
                //     // width:double.infinity,
                //   text: 'Login',
                //     // background: Colors.blue,
                //   function: (){
                //
                //     if(_formKey.currentState!.validate()){
                //       print(emailController.text);
                //       print(passwordController.text);
                //     }
                //
                //   },
                //
                // ),
                SizedBox(
                  height:10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                    Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(onPressed:(){

                    },
                      child: Text(
                        'Register Now',
                      ),
                    ),
                  ] ,
                ),
              ],
             ),
           ),
         ),
       ),
     ),
   );
  }
}