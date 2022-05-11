import 'package:flutter/material.dart';
import 'package:risetimedev/models/side_drawer.dart';

class DailyDatasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: 40,
                color: Colors.black,
              ),
              color: Colors.black,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ),
      drawer: CustomSideDrawer(),
      body: Container(
        child: Text("Daily Datas"),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}