import 'package:flutter/material.dart';

/*
the purpose of this syntax to import the flutter material design library
widgets
import- dart keywords to include external libraries

package:flutter/ - refers to material package that comes w/ flutter widgets

this is essential for building Flutter apps w/ standard UI

 */


void main (){
  runApp (const MyApp());
}

/*
Entry point of the Flutter app
void main () - main function, Starting point of any dart program

runApp() Flutter function that initializes the app and attaches the root widget
(MyApp) to the screen

const MyApp() - create an instance of the MyApp widget, marked const for
compile-time optimization (immutable configuration)


**/

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }

}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MUNTING PRINSESA'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset('assets/siganda.jpg',
                  width: 600,
                  height: 600,
                ),
                const SizedBox(height: 20),
                const Text(
                  'SNOW WHITE',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                const SizedBox(height: 20),
                const Text(
                  'The Grimm fairy tale gets a Technicolor treatment in Disney first animated feature,'
                  'Jealous of Snow White' 'beauty, the wicked queen orders the murder of her innocent stepdaughter, '
                  'but later discovers that Snow White is still alive and hiding in a cottage with seven friendly little miners. '
                  'Disguising herself as a hag, the queen brings a poisoned apple to Snow White, '
                'who falls into a death-like sleep that can be broken only by a kiss from the prince.',
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  textAlign: TextAlign.center,


                ),
              ]
            )
        )
    );


  }
}

/*
defined as the root widget (main container) of the app

class MyApp extends StatelessWidget- MyApp is custom that's extends StatelessWidget

StatelessWidget - base class for widgets that do not hold mutable state

const MyApp({super.key}); - constructor super.key passes an optional key to the base class

key uniquely identify widgets tree

const - ensures immutable constructor

MaterialApp
- sets up app structure: navigation, them,es, home screen
- title - visible in the task switcher
theme - ThemeData(primarySwatch: Colors,blue) sets primary color palette
- home : const MyHomePage() sets an initial screen

 */
