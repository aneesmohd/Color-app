import 'package:bloc_example/bloc/color_bloc.dart';
//import 'package:bloc_example/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:BlocProvider(
  create: (BuildContext context) => ColorBloc(),
  child: ColorScreen(),

)
    );
  }
}

