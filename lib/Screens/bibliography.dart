import 'package:flower_bucket/Screens/home.dart';
import 'package:flower_bucket/Widgets/app_bar.dart';
import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flutter/material.dart';

class BibliographyScreen extends StatefulWidget {
  static String routeName = "bibliography";
  @override
  _BibliographyScreenState createState() => new _BibliographyScreenState();
}

class _BibliographyScreenState extends State<BibliographyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: buildAppBar(context: context, title: "Bibliografía"),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: buildBibliography()),
      )),
    );
  }

  buildBibliography() {
    List<Widget> list = [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        NormalText(
          "Bibliografía",
          weight: FontWeight.bold,
        ),
      ])
    ];
    HomeScreen.specieList.forEach((element) {
      list.add(NormalText(
        element.literature.join("\n"),
      ));
    });
    return list;
  }
}
