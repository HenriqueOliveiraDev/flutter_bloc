import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/controller/home_view_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeViewBloc bloc = HomeViewBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
                stream: bloc.streamOutput,
                initialData: 0,
                builder: (context, snapshot) {
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
