import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: [
              //1.AboutDialog
              ListTile(
                title: Text("AboutDialog"),
                onTap: () {
                  Navigator.pushNamed(context, 'aboutdialogdemo');
                },
              ),

              ListTile(
                title: Text("AboutListTile"),
                onTap: () {
                  Navigator.pushNamed(context, 'aboutlisttile');
                },
              ),

              ListTile(
                title: Text("AbsorbPointer"),
                onTap: () {
                  Navigator.pushNamed(context, 'absorbpointer');
                },
              ),

              ListTile(
                title: Text("AlertDialog"),
                onTap: () {
                  Navigator.pushNamed(context, 'alertdialog');
                },
              ),

              ListTile(
                title: Text("Align"),
                onTap: () {
                  Navigator.pushNamed(context, 'align');
                },
              ),

              ListTile(
                title: Text("AnimatedAlign"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedalign');
                },
              ),

              ListTile(
                title: Text("AnimatedBuilder"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedbuilder');
                },
              ),

              ListTile(
                title: Text("AnimatedContainer"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedcontainer');
                },
              ),

              ListTile(
                title: Text("AnimatedCrossFade"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedcrossfade');
                },
              ),

              ListTile(
                title: Text("AnimatedIcon"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedicon');
                },
              ),

              ListTile(
                title: Text("AnimatedIcon"),
                onTap: () {
                  Navigator.pushNamed(context, 'animatedicon');
                },
              ),

              ListTile(
                title: Text("AspectRatio"),
                onTap: () {
                  Navigator.pushNamed(context, 'aspectratio');
                },
              ),

              ListTile(
                title: Text("AutoComplete"),
                onTap: () {
                  Navigator.pushNamed(context, 'autocomplete');
                },
              ),

              ListTile(
                title: Text("Banner "),
                onTap: () {
                  Navigator.pushNamed(context, 'banner');
                },
              ),

              ListTile(
                title: Text("Bottom Navigation Bar "),
                onTap: () {
                  Navigator.pushNamed(context, 'bottomnavigationbar');
                },
              ),

              ListTile(
                title: Text("Bottom Sheet"),
                onTap: () {
                  Navigator.pushNamed(context, 'bottomsheet');
                },
              ),

              ListTile(
                title: Text("Builder Demo"),
                onTap: () {
                  Navigator.pushNamed(context, 'builder');
                },
              ),
              
              ListTile(
                title: Text("Card Demo"),
                onTap: () {
                  Navigator.pushNamed(context, 'card');
                },
              ),

              ListTile(
                title: Text("Check Box Demo"),
                onTap: () {
                  Navigator.pushNamed(context, 'checkbox');
                },
              ),

              ListTile(
                title: Text("Check Box List Tile Demo"),
                onTap: () {
                  Navigator.pushNamed(context, 'checkboxlisttile');
                },
              ),

              ListTile(
                title: Text("Chip"),
                onTap: () {
                  Navigator.pushNamed(context, 'chip');
                },
              ),

              ListTile(
                title: Text("Choice Chip"),
                onTap: () {
                  Navigator.pushNamed(context, 'choicechip');
                },
              ),

              ListTile(
                title: Text("Circular Progress Indicator"),
                onTap: () {
                  Navigator.pushNamed(context, 'circularprogressindicator');
                },
              ),

              ListTile(
                title: Text("Close Button"),
                onTap: () {
                  Navigator.pushNamed(context, 'closebutton');
                },
              ),

              ListTile(
                title: Text("Colored Box"),
                onTap: () {
                  Navigator.pushNamed(context, 'coloredbox');
                },
              ),

              ListTile(
                title: Text("Color Filtered"),
                onTap: () {
                  Navigator.pushNamed(context, 'colorfiltered');
                },
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
