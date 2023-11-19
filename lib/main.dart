import 'package:flutter/material.dart';
import 'package:furpixs/Screens/splash_screen.dart';
import 'package:furpixs/constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,


        home: SplashScreen(),
    );
  }
  }


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text(".FurPix/")
          
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heading",style: Theme.of(context).textTheme.headline2,),
            Text("Sub-heading",style: Theme.of(context).textTheme.subtitle2,),
            Text("paragraph",style: Theme.of(context).textTheme.bodyText1,),

          ],
        ),
      ),
         // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
