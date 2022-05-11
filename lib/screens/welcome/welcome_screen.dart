import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:risetimedev/Screens/Welcome/components/body.dart';
import 'package:provider/provider.dart';
import 'package:risetimedev/models/side_drawer.dart';
import 'package:risetimedev/screens/seotalep/seotalep_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Body(),
    );
  }
}
