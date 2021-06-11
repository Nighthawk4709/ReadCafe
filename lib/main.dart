import 'package:flutter/material.dart';
import 'package:read_cafe/lowerSection.dart';
import 'package:read_cafe/searchBar.dart';
import 'package:read_cafe/upperSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReadCafe',

      // add theme options
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),

      // call of homeScreen function
      home: MyHomePage(), //homepage here
    );
  }
}

//example structure

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to be discussed whether to put or not
      /*drawer: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width * 1,
        child: Drawer(),
      ),*/

      // code for appbar

      appBar: AppBar(
        //search bar in title function in SearchBar.dart
        title: SearchBar(),

        // icons of home screen
        actions: [
          // 1st homescreen
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.home), label: Text('Home')),

          // 2nd About
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.book), label: Text('About')),

          //3rd chat option for future using firebase cloud messages
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.chat), label: Text('Chat')),

          //4th users info and other settings
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined),
              label: Text(""))
        ],
      ),
      // see parallax swipper
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            // in this container we'll make the upper part showing book selected
            // reviews written and you can rate that particular book

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover)),
              child: Upper(),
            ),

            // in this container we'll use a parallax swiper horizontally
            // to show books available and there ratings

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/2.jpg'),
                      fit: BoxFit.cover)),
              child: Lower(),
            ),
          ]),
        ),
      ),
      //here we'll implement the function for footer
    );
  }
}
