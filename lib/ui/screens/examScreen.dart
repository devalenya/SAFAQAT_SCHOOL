import 'package:eschool/ui/screens/home/widgets/examContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  final int? childId;
  const ExamScreen({Key? key,this.childId}) : super(key: key);

  static Route route(RouteSettings routeSettings) {
    return CupertinoPageRoute(
        builder: (_) =>  ExamScreen(
            childId: routeSettings.arguments as int,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExamContainer(childId: childId),
    );
  }
}
