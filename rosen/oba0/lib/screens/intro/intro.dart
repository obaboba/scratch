import 'package:flutter/material.dart';

import 'step1.dart';

class IntroHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroHomeState();
  }
}

class _IntroHomeState extends State<IntroHome> {
  final _formsPageViewController = PageController();
  List _forms;


  @override
  Widget build(BuildContext context) {
    _forms = [
      Step1(),
    ];

    return Material(
      child:PageView.builder(
        controller: _formsPageViewController,
        //physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return index >= _forms.length ? _forms.last: _forms[index];
        },
      ),
    );
  }

  void _submit() {
    _formsPageViewController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}


