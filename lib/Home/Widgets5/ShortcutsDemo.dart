import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortcutsDemo extends StatefulWidget {
  ShortcutsDemoState createState() {
    return ShortcutsDemoState();
  }
}

class IncrementIntent extends Intent {
  IncrementIntent();
}

class DecrementIntent extends Intent {
  DecrementIntent();
}

class ShortcutsDemoState extends State<ShortcutsDemo> {
  int count =0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shortcuts(
            shortcuts: <ShortcutActivator, Intent>{
              LogicalKeySet(LogicalKeyboardKey.arrowUp): IncrementIntent(),
              LogicalKeySet(LogicalKeyboardKey.arrowDown): DecrementIntent(),
            },
            child: Actions(actions: {
              IncrementIntent: CallbackAction(
                  onInvoke: (intent) => setState(() {
                        count = count + 1;
                  })
              ),
              DecrementIntent: CallbackAction(
                  onInvoke: (intent) => setState(() {
                        count = count - 1;
                  })
              ),
            }, 
            child: Focus(
              child: Center(
                child: Text('Count $count'),
              ),
            )
        )),
      ),
    );
  }
}
