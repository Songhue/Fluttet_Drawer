import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    radius: 50.0,
                    // backgroundColor: const Color(0xFF778899),
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/test1-8fea8.appspot.com/o/tong_img.jpg?alt=media&token=fbb9d626-051d-4746-86de-233b6d10d7c0"
                    ),
                  ),
                  accountName: Text(
                      "Try Songheu",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  accountEmail: Text("007songheu@gmail.com"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                 onTap: (){

                 },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){

                  },
                ),
                Divider(),

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                      leading: Icon(Icons.arrow_back),
                      title: Text(
                        "Log out"
                      ),
                      onTap: (){},
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
