import 'package:flower_bucket/Screens/home.dart';
import 'package:flower_bucket/Widgets/app_bar.dart';
import 'package:flower_bucket/Widgets/generic_button.dart';
import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SpecieViewScreen extends StatefulWidget {
  static String routeName = "specie-view";
  @override
  _SpecieViewScreenState createState() => new _SpecieViewScreenState();
}

class _SpecieViewScreenState extends State<SpecieViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: buildAppBar(
          context: context, title: HomeScreen.selectedElement.scientificName),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            NormalText(
              HomeScreen.selectedElement.scientificName,
              weight: FontWeight.bold,
            ),
            NormalText(HomeScreen.selectedElement.name, weight: FontWeight.bold)
          ]),
          Image.network(
            HomeScreen.selectedElement.image1Url,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            NormalText(
              HomeScreen.selectedElement.family,
              weight: FontWeight.bold,
            ),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            NormalText(
              "Descripción",
              weight: FontWeight.bold,
            ),
          ]),
          NormalText(
            HomeScreen.selectedElement.description,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            NormalText(
              "Distribución",
              weight: FontWeight.bold,
            ),
          ]),
          Center(
              child: Container(
                  width: 200,
                  child: GenericButton(
                    "Ver imagen",
                    onPressed: () {},
                  ))),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            NormalText(
              "Literatura asociada",
              weight: FontWeight.bold,
            ),
          ]),
          NormalText(
            HomeScreen.selectedElement.literature.join("\n"),
          ),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            NormalText(
              "Dirección de la especie en el herbario",
              weight: FontWeight.bold,
            ),
          ]),
          GestureDetector(
            onTap: () {
              launchURL(HomeScreen.selectedElement.webUrl);
            },
            child: NormalText(
              HomeScreen.selectedElement.webUrl,
              color: Colors.blue,
            ),
          ),
        ]),
      )),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
