import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';
import './screens/my_home_page.dart';
import './providers/todo_provider.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key?Key}) : super(key:Key);

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
        create: ((context)=>TodoProvider()),
      child: MaterialApp(
        title:'Todo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}