import 'package:flutter/material.dart';

class HomePageTopBar extends StatefulWidget{
  @override
  _HomePageTopBar createState() => _HomePageTopBar();
}

class _HomePageTopBar extends State<HomePageTopBar>{
  TextEditingController _searchBarController = TextEditingController();

  @override
  build(BuildContext context){
    return new AppBar(
      backgroundColor: Colors.blueAccent,
      leading: IconButton(
          icon:Icon(Icons.local_library),
          onPressed: null,
      ),
      title: Container(
        height: 38,
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
        ),
        child:TextField(
          controller: _searchBarController,
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText:"just for now, TODO: dynamatic value"
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.local_florist,color: Colors.deepOrangeAccent),
          onPressed:null,
        ),
        IconButton(
          icon: Icon(Icons.message),
          onPressed:null,
        ),
      ],

    );
  }

}

