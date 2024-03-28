import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//It can be useful to briefly inform your users when certain
// actions take place. For example, when a user swipes away a
// message in a list, you might want to inform them that the
// message has been deleted. You might even want to give them
// an option to undo the action.
//
// In Material Design, this is the job of a SnackBar. This recipe
// implements a snackbar using the following steps:
// Create a Scaffold.
// Display a SnackBar.
// Provide an optional action.

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Delete Snacks'),
            onPressed: () {
               final snackBar = SnackBar(
                backgroundColor: Colors.grey,
                content: const Text('Snacks Deleted'),
                duration: const Duration(seconds: 10),
                action: SnackBarAction(
                    label: 'undo',
                    textColor: Colors.white,
                    onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
    );
  }
}
