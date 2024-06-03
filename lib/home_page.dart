// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_application/bloc/counter_bloc.dart';
import 'package:flutter_test_application/bloc/counter_event.dart';
import 'package:flutter_test_application/bloc/counter_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Employment ID",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('images/id.png'),
              radius: 50.0,
            )),
            Divider(height: 60.0, color: Colors.grey[800]),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Sifiso",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Employment Probability",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //BlocBuilder is used to rebuild the widget and display the new updated
            // value whenever the count increases or decreases when the bloc events are called
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  "${state.count}%",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                "Sifiso@gmail.com",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ]),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              /* When the button is clicked, the counter decrement event is 
              called, the count is decreased, and the new value is displayed 
              thanks to bloc builder. */
              context.read<CounterBloc>().add(CounterDecrement());
            },
            backgroundColor: Colors.amberAccent[200],
            child: Center(child: Icon(Icons.minimize)),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrement());
            },
            backgroundColor: Colors.amberAccent[200],
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
