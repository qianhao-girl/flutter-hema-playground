import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywinflutterapp/widgets/HomePageTopBar.dart';
import 'package:mywinflutterapp/widgets/CategoriesPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HeMa",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'HeMa Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _children = [
    HomePage(), CategoriesPage(), HeMaLifePage(), CartPage(), MyAccountPage(),
  ];
//  final HomePageTopBar _homePageTopBar = HomePageTopBar();
  final List<Widget> _topBars = new List.generate(5, (int index) => index, growable: false).map(
      (int value) => new PreferredSize(child: new HomePageTopBar(), preferredSize: Size.fromHeight(48))
  ).toList();

  int _currentIndex = 0;

  void _onTapTaped(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar:_topBars[_currentIndex],
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTapTaped,
        currentIndex:_currentIndex,
        items: [
          new BottomNavigationBarItem(icon: Icon(Icons.home), title:Text("主页")),
          new BottomNavigationBarItem(icon:Icon(Icons.category), title: Text("分类")),
          new BottomNavigationBarItem(icon:Icon(Icons.satellite), title: Text("盒区生活")),
          new BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title:Text("购物车")),
          new BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("我的")),
        ],
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.lightBlueAccent,
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Center(child: Text("TODO:  HOMEPAGE"));
  }
}




//class CategoriesPage extends StatefulWidget{
//  @override
//  _CategoriesPageState createState() => _CategoriesPageState();
//}
//
//class _CategoriesPageState extends State<CategoriesPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Center(child: Text("TODO:  CategoriesPage"));
//  }
//}


class HeMaLifePage extends StatefulWidget{
  @override
  _HeMaLifePageState createState() => _HeMaLifePageState();
}

class _HeMaLifePageState extends State<HeMaLifePage>{
  @override
  Widget build(BuildContext context){
    return Center(child: Text("TODO:  HeMaLifePage"));
  }
}


class CartPage extends StatefulWidget{
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context){
    return Center(child: Text("TODO:  CartPage"));
  }
}


class MyAccountPage extends StatefulWidget{
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage>{
  @override
  Widget build(BuildContext context){
    return Center(child: Text("TODO:  MyAccount"));
  }
}

