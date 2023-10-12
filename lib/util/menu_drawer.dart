import "package:flutter/material.dart";

var drawerMenu = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const[
      //DrawerHeader(child:  )
      ListTile(
        leading: Icon(Icons.soup_kitchen_outlined),
        title: Text("R E C E I T A S"),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text("F A V O R I T O S"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("C O N F I G U R A Ç Õ E S"),
        // onTap
      ),
    ],
  ),
);