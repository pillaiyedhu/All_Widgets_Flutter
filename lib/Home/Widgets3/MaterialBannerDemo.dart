import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialBannerDemo extends StatefulWidget {
  MaterialBannerDemoState createState() {
    return MaterialBannerDemoState();
  }
}

class MaterialBannerDemoState extends State<MaterialBannerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: Text("Subscribe"),
                    leading: Icon(Icons.alarm),
                    actions:[
                      TextButton(
                        onPressed: (){
                          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                        }, 
                        child: Text("Cancel")
                      )
                    ] 
                  )
                );
              },
              child: Text("Material Banner")),
        ),
      ),
    );
  }
}
