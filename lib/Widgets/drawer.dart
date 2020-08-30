import 'package:flower_bucket/Screens/bibliography.dart';
import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flower_bucket/Widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer buildDrawer({@required BuildContext context}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: TitleText(
            "Flower bucket",
            weight: FontWeight.bold,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
        ListTile(
          title: NormalText('Listado de precios'),
          onTap: () {},
        ),
        ListTile(
          title: NormalText('Glosario'),
          onTap: () {},
        ),
        ListTile(
          title: NormalText('Créditos'),
          onTap: () {},
        ),
        ListTile(
          title: NormalText('Bibliografía'),
          onTap: () {
            navigateTo(context, BibliographyScreen.routeName);
          },
        ),
        Divider(
          color: Theme.of(context).disabledColor,
        ),
        ListTile(
          title: NormalText('¿Cómo usar la app?'),
          onTap: () {},
        ),
        Divider(
          color: Theme.of(context).disabledColor,
        ),
        ListTile(
          title: NormalText('Información del herbario'),
          onTap: () {},
        ),
        ListTile(
          title: NormalText('Información de la universidad'),
          onTap: () {},
        ),
        ListTile(
          title: NormalText('Contacto'),
          onTap: () {},
        )
      ],
    ),
  );
}

removeAllOfNavigatorAndPush(BuildContext context, String routeName) {
  while (Navigator.of(context).canPop()) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).pushReplacementNamed(routeName);
}

navigateTo(BuildContext context, String routeName) {
  while (Navigator.of(context).canPop()) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).pushNamed(routeName);
}
