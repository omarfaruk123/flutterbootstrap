import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return FlutterBootstrap5(
      builder: (ctx) => MaterialApp(home: HomeActivity()),
    );
    // return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Bootstrap"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FB5Container(
          child: FB5Row(
            classNames: 'mt-5 px-xs-3 px-lg-0 gx-4',
            children: [

              FB5Col(
                classNames: 'col-lg-3 col-sm-6 col-xs-12 mb-2',
                child: Container(
                  height: 100,
                  color: Colors.orange,
                  child: Text('First column'),
                ),
              ),
              FB5Col(
                classNames: 'col-lg-3 col-sm-6 col-xs-12 mb-2',
                child:  Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Text("Second column"),
                ),
              ),
              FB5Col(
                classNames: 'col-lg-3 col-sm-6 col-xs-12 mb-2',
                child:  Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text("Third Column"),
                ),
              ),
              FB5Col(
                classNames: 'col-lg-3 col-sm-6 col-xs-12 mb-2',
                child: Container(
                    color: Colors.green,
                    height: 100,
                    child: Text('Forth column')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}