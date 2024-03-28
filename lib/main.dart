import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more_widgets/application.dart';
import 'package:more_widgets/pages/table_page.dart';

import 'pages/gridview_page.dart';

void main() async {
  // We need to ensure that the flutter is initialized before we set the
  // preferred orientation. To do this we just have to add one line of code to
  // the top of our main method.
  WidgetsFlutterBinding.ensureInitialized();

  // The SystemChrome class can be found in the services library.
  // This class has a static method called setPreferredOrientations that takes
  // a list and returns a Future. The list is an array of device orientations.
  // DeviceOrientation is an enumerator.
  await SystemChrome.setPreferredOrientations(
    [
      //application will only support portrait mode,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]
  );
  runApp(const Application());
}
