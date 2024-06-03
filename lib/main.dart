// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test_application/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

//main file where everything is run
void main() => runApp(MaterialApp(
        //bloc provider is used to provide an instance of the app
        //so we can refer to it in the app and it is declared here so
        //the counterbloc is available for use throughout the app
        home: BlocProvider(
      create: (context) => CounterBloc(),
      child: Home(),
    )));
