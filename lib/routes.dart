import 'package:flutter/cupertino.dart';
import 'package:more_widgets/pages/clip_page.dart';
import 'package:more_widgets/pages/notify_page.dart';
import 'package:more_widgets/pages/orientation_page.dart';
import 'package:more_widgets/pages/pages_library.dart';
import 'package:more_widgets/pages/stack_page.dart';

final routes = {
  '/': (BuildContext context) => const HomePage(),
  '/gridview': (BuildContext context) => const GridViewPage(),
  '/table': (BuildContext context) => const TablePage(),
  '/stack': (BuildContext context) => const StackPage(),
  '/clip': (BuildContext context) => const ClipPage(),
  '/notify': (BuildContext context) => const NotifyPage(),
  '/orientation': (BuildContext context) => const OrientationPage(),
};
