import 'package:flower_bucket/Models/category.dart';
import 'package:flower_bucket/Models/diagnosis.dart';
import 'package:flower_bucket/Models/specie.dart';
import 'package:flower_bucket/Screens/specie_view.dart';
import 'package:flower_bucket/Utilities/Theme/color/color_scheme.dart';
import 'package:flower_bucket/Widgets/app_bar.dart';
import 'package:flower_bucket/Widgets/drawer.dart';
import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home";
  static SpecieModel selectedElement;
  static List<SpecieModel> specieList;
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hasInitializedList = false;
  List<DiagnosisModel> diagnosisList;
  List<SpecieModel> filteredSpecieList;
  List<CategoryModel> selectedCategories = [];
  int currentDiagnosisIndex = 0;

  @override
  void initState() {
    super.initState();
    diagnosisList = List();
    int diagnosisId = 1;
    int id = 1;
    List<CategoryModel> categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Palma",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FHabito%2FPalma%2FPalma.jpg?alt=media&token=45de4169-353d-48c1-9ebf-cd6c95556ea6"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Arbol",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FHabito%2FArbol%2FArbol.jpg?alt=media&token=a5a5c101-fc60-4f56-8685-494f6737e0b9"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Arbusto",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FHabito%2FArbusto%2FArbusto.jpg?alt=media&token=c0723076-a32a-4060-ad81-fdada48e289c"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Hierba",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FHabito%2FHierba%2FHierba.jpg?alt=media&token=3c9f56e5-3e97-425b-a25b-eaa0d75046cf"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Habito", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Simple",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fhojasimple2finalalala-min.jpg?alt=media&token=114e807a-793c-4a6d-b9fd-c52077474c0b"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Compuesta palmeada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fhojapalmeadafinalfinal%20(2)-min.jpg?alt=media&token=c53eae56-cf70-426c-acb8-54c7c5373c86"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Paripinnada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fparipinnada%20(1)final-min.jpg?alt=media&token=472f7720-56df-484b-8dba-8896abf39c6e"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Imparipinnada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fimparipinnada%20final(1)-min.jpg?alt=media&token=147cc71a-76e2-4297-8a2d-9af0ed306a71"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Trifoliolada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Ftrifoliadafinal-min.jpg?alt=media&token=c9e279b7-8dc7-4b29-aa3f-1ffb3a94b723"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Bipinnada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fbipinnadafinal-min.jpg?alt=media&token=055254b2-5f06-4585-a925-41223da29d73"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Acicula",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Faciculafinal-min.jpg?alt=media&token=25f289a3-1ec4-4bb1-a956-3e79be4a5bcd"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Escamosas",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FTipo%20de%20hoja%2Fescamosafinal-min.jpg?alt=media&token=1d61e9d5-1812-4501-8660-237c7b2f999f"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Hoja", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Alterna",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffilotaxia%2Fhojasimple2finalalala-min.jpg?alt=media&token=28d99068-9d81-4478-b2fe-486806eb8169"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Opuesta",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffilotaxia%2Fopuestofinal-min.jpg?alt=media&token=128d111e-354e-40e2-aa98-3fd948dbb004"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Verticilada",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffilotaxia%2Fverticiladofinal-min.jpg?alt=media&token=5bdcb390-0c3e-4a20-a840-066296706978"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Filotaxia", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Helicoidal",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Fdisposicion%2Fhelicoidal%20(2)-min.jpg?alt=media&token=c39dffa0-de7b-4b8a-997a-9a1d41b18e7d"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Distico",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Fdisposicion%2Fdisticasfinalfinalalal-min.jpg?alt=media&token=3b2ecacb-97f7-4b8a-8fd6-62a27fc8ecd6"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Decusado",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Fdisposicion%2Fdecudasfinalfinalfinal-min.jpg?alt=media&token=d35df0da-3c09-4362-9686-56ebb3bb936a"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Disposición", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Con Esttipula",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FEstipula%2FCon%20estipula%2FConEstipula.jpg?alt=media&token=02d7c327-e12b-4f83-a833-f67003c0684f"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sin Estipula",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FEstipula%2FSin%20estipula%2FSinEstipulas.jpg?alt=media&token=e720617b-15a6-4174-a603-fed24a5ffb00"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Estipula", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Con olor",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Folor%2Fconolorfinal-min.jpg?alt=media&token=4d8a494e-c2cd-4793-8079-973b4fb92933"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sin olor",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Folor%2Fsinolorfinal-min.jpg?alt=media&token=fe183ab9-8fe1-497a-b9f3-9e85daa65155"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Olor", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Con espinas",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FEspinas%2FCon%20espinas%2FConEspinas.jpg?alt=media&token=1f682e04-6800-4d46-9591-d5f3c8d6acbd"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sin espinas",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FEspinas%2FSin%20Espinas%2FSinEspinas.jpg?alt=media&token=63f41f3e-eaff-49db-aad2-61267fc72b6b"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Espinas", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Solitaria",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FSolitaria%2FSolitaria.jpg?alt=media&token=cf845b7e-fbbf-428b-863d-529598367850"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Espiga",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FEspiga%2Fespiga.jpg?alt=media&token=f5a33417-e4ec-4e46-aba1-7a29d02b57ba"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Cima",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FCima%2FCima.jpg?alt=media&token=d4ec39e2-f58a-473f-85c1-b86a084dd37b"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Amento",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FAmento%2FAmento.jpg?alt=media&token=6a1ff6ad-7e98-4108-9845-510c44d7e880"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Capitulo",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FCapitulo%2FCapitulo.jpg?alt=media&token=e083452b-305c-43ce-b10a-1253c56adf1d"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Racimo",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FRacimo%2FRacimo.jpg?alt=media&token=857249ce-f032-4315-8e71-71f6fe6985b6"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Corimbo",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FCorimbo%2FCorimbo.jpg?alt=media&token=dd96276b-79ad-48d5-a361-51ac8975b58f"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Umbela",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FUmbela%2FUmbela.jpg?alt=media&token=16640c3e-4ce0-4069-9ac5-5993fd92f0d7"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Umbela Compuesta",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FUmbela%20Compuesta%2FUmbela%20Compuesta.png?alt=media&token=56155f74-b8d6-4d88-af46-9fbb1530129b"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Panicula",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FPanicula%2FPanicula%7D.jpg?alt=media&token=0d816cc8-2dd4-4402-bba4-3918485d0699"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sicono",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FSicono%2FSicono.jpg?alt=media&token=ef3077cf-2373-4173-b3df-81f0ee52b063"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Espadice",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FEspadice%2FEspadice.jpg?alt=media&token=93ad3251-230c-4d1a-a3ea-7bf2371438e7z"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Fasciculos",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FFaciculo%2FFaciculo.jpg?alt=media&token=f94e2083-09ca-4f68-8913-7b5017d848a4"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Ciato",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FInflorescencia%2FCiato%2FCiato.jpg?alt=media&token=ab12c0f3-4b4c-4eb8-889d-6abfbf01a217"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Inflorescencia", categories: categories));
    diagnosisId++;

    /*categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Entero",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FEntero%2FEntero.jpg?alt=media&token=b35fccbe-916c-448d-ac47-7a638dae5fb7"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Aserrado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FAserrado%2FAserrado.jpg?alt=media&token=540ea38f-1ae4-4120-8b85-087c9807474f"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Crenado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FCrenado%2FCrenado.jpg?alt=media&token=61169edd-b727-4599-ab62-046fedad5f2e"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Dentado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FDentado%2FDentado.jpg?alt=media&token=89faab6e-1408-429d-bd5a-7094a7ea8974"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Lobulado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FLobulado%2FLobulado.jpg?alt=media&token=be94596e-35d1-4d45-93f9-8b4efb167bc2"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Ondulado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FOndulado%2FOndulado.jpg?alt=media&token=8ea818f3-940c-459f-8b83-02b8ae0f3021"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Denticulado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FDenticulado%2FDenticulado.jpg?alt=media&token=c902c2ad-3db6-433f-a691-d9eca9a7e483"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Ciliado",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FCiliado%2FCiliado.jpg?alt=media&token=17558d58-84fe-4649-a140-48307d804ce1"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Espinoso",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2FMargen%2FEspinoso%2FEspinoso.jpg?alt=media&token=3c91f64b-17ac-4c1f-ba95-658520f8e015"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Margen", categories: categories));
    diagnosisId++;*/

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Legumbre",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Flegumbre.jpg?alt=media&token=9156368e-a7ea-4417-83c2-3240b140c833"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Foliculo",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Ffoliculo.jpg?alt=media&token=cc37127a-447b-4c3e-a11a-ae0800caffcd"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Silicua",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fsilicua-min.jpg?alt=media&token=5b6d536c-cad6-452a-9268-318de72465cc"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Capsula",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fcapsula%20(1)-min.jpg?alt=media&token=824ce502-ab6f-42ff-b35f-6d02ce05c880"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Pixidio",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fpixidio%20(1).jpg?alt=media&token=b8bdbaa4-669f-4f49-b905-628cd4584052"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Aquenio",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Faquenio%20(1).jpg?alt=media&token=6eee0cd9-066e-452f-a0f3-6fbc4073a1bf"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Cariopsida",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fcariopsis%20(1)-min.jpg?alt=media&token=d7b72f78-c8f0-4cb9-b9ec-1b1662424105"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Samara",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fsamara%20(1)-min.jpg?alt=media&token=6c5a28d6-bc10-455c-8c8b-b5060f6539fb"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Lomento",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Flomento%20(1)-min.jpg?alt=media&token=de402b5b-b347-4422-b361-0702c5ed589f"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Drupa",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fdrupa%20(1).jpg?alt=media&token=0d750f29-a40d-43e4-b27b-e3921e742801"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Baya",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fbaya%20(1).jpg?alt=media&token=a359decb-843d-44b4-9780-c9f04cc9d9fe"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Hesperidio",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fhesperidio%20(1).jpg?alt=media&token=4329f948-76c5-4781-8c46-1eb6dee05a4d"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sorosis",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fsorosis%20(1).jpg?alt=media&token=92a7143d-91a2-4b59-8da0-b9a2715ce677"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sicono",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fsicono%20(1).jpg?alt=media&token=776ee2b5-8c8f-4836-82cb-af17d9e00e60"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Pomo",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Diagnosis%2Ffruto%2Fpomo%20(1).jpg?alt=media&token=30d7392f-6284-431e-bdfd-66cb0059080d"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Frutos", categories: categories));
    diagnosisId++;

    HomeScreen.specieList = List();
    id = 1;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Sambucus nigra",
        name: "Sauco",
        family: "ADOXACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Sambucus%20nigra",
        literature: [
          "Barrero Barrero, D., Camelo Salamanca, D., Ovalle Escobar, A., Rozo Fernández, A., & Mahecha Vega, G. E. (2012). Vegetación del territorio CAR: 450 especies de sus llanuras y montañas."
        ],
        description:
            """35cm de largo, 25cm de ancho, borde aserrado, textura coriacea, raquis acanalado, apice y base acuminadas, corteza lenticelada, ramificacion empieza desde la base, tronco con forma arqueada""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FSambucus%20nigra%2Fsasuco2%20finaljpg.jpg?alt=media&token=e089ef17-136e-4aa4-bcc6-d753c7735ffe",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FSambucus%20nigra%2Fsauco1final-min.jpg?alt=media&token=835c293e-50d4-4c63-81e2-e5add6e9fbde",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[3],
          diagnosisList[2].categories[1],
          diagnosisList[3].categories[2],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[1],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[8],
          diagnosisList[8].categories[10]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Acacia decurrens",
        name: "Acacia negra",
        family: "LEGUMINOSAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Acacia%20decurrens",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description:
            """Foliolulos muy finos, de color grisaceo, muy finas y con presencia de nectarios, tronco por lo regular presenta agallas por presencia de una bacteria""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FAcacia%20decurrens%2F1200px-Acacia-decurrens-catalina%20(1)-min.jpg?alt=media&token=2dabd6e3-bbac-4371-8f03-2f80b85d95db",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FAcacia%20decurrens%2Facaciadecurrensfinal-min.jpg?alt=media&token=73818f20-83e0-43a6-b1ec-39c24b0acbb6",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[5],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[9],
          diagnosisList[8].categories[0]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Pittosporum undulatum",
        name: "Jazmin del cabo",
        family: "PITTOSPORACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Pittosporum%20undulatum",
        literature: [
          "Barrero Barrero, D., Camelo Salamanca, D., Ovalle Escobar, A., Rozo Fernández, A., & Mahecha Vega, G. E. (2012). Vegetación del territorio CAR: 450 especies de sus llanuras y montañas."
        ],
        description:
            """Forma lanceolada, lustrosas, borde ondulado y entero, textura coriacea, apice acuminado, base aguda, presenta lenticelas en su corteza""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FPittosporum%20undulatum%20Vent.%2FPittosporum_undulatum_berries_final-min.jpg?alt=media&token=be660d89-46aa-4788-82d2-bc31cd19f0f2",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FPittosporum%20undulatum%20Vent.%2Fpittosporum%20undulatum2%20final-min.jpg?alt=media&token=69d94e22-e0bb-45de-b6e5-99792f55978b",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[2],
          diagnosisList[8].categories[3]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Acacia melanoxylon",
        name: "Acacia japonesa",
        family: "LEGUMINOSAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Acacia%20melanoxylon",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description:
            """compuestas en forma juvenil, en estado adulto se forman filodios (falsa hoja simple), estos son falcados y de consistencia cartacea, corteza agrietada y escamosa""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FAcacia%20melanoxylon%20R.Br.%2F1200px-Acacia_melanoxylon_branch%20(1)-min.jpg?alt=media&token=c2c01bdd-8eca-4e78-9075-dda6f45b1784",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FAcacia%20melanoxylon%20R.Br.%2FStarr_050818-4062_Acacia_melanoxylon%20(2)-min.jpg?alt=media&token=efff5c49-f626-4a43-bd21-bd0677aef949",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[5],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[5],
          diagnosisList[8].categories[0]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Fraxinus uhdei",
        name: "Urapan, fresno",
        family: "OLEACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Fraxinus%20chinensis",
        literature: [
          "http://www.conabio.gob.mx/conocimiento/info_especies/arboles/doctos/53-oleac1m.pdf"
        ],
        description:
            """forma lanceolada, margen crenado o entero, corteza de color griz y agrietada, raices superficiales y anchas""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FFraxinus%20chinensis%20Roxb.%2F800px-Fraxinus_chinensis_subsp._rhynchophylla_kz03%20(1)-min.jpg?alt=media&token=fc8a2a8c-8500-4b8a-8662-dd863ac2a383",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FFraxinus%20chinensis%20Roxb.%2FFraxinus_chinensis%20(1)-min.jpg?alt=media&token=70dbc0b8-94d7-4b4f-9813-34d8f7858948",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[3],
          diagnosisList[2].categories[1],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[1],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[9],
          diagnosisList[8].categories[7]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Cotoneaster pannosus",
        name: "Holly liso",
        family: "ROSACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Cotoneaster%20pannosus",
        literature: [
          "Barrero Barrero, D., Camelo Salamanca, D., Ovalle Escobar, A., Rozo Fernández, A., & Mahecha Vega, G. E. (2012). Vegetación del territorio CAR: 450 especies de sus llanuras y montañas."
        ],
        description:
            """forma eliptica, enves de color blanco, borde entero, textura coriacea, apice apiculado, base redondeada""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FCotoneaster%20pannosus%20Franch%2FCotoneaster%20pannosus2.jpg?alt=media&token=7bf7be4f-e56e-4d30-825f-267ff9b0c6a4",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FCotoneaster%20pannosus%20Franch%2FCotoneaster%20pannosus1.jpg?alt=media&token=993ae5b9-2b97-4c6d-9a4b-4a1ef29f1c1b",
        categories: [
          diagnosisList[0].categories[2],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[1],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[1],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[2],
          diagnosisList[8].categories[10]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Eucalyptus globulus",
        name: "Eucalipto comun",
        family: "MYRTACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Eucalyptus%20globulus",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description:
            """Forma ovoides, enves blancusco, puntos translucidos, forma falcada, textura coriacea, borde entero, apice acuminado, base redondeada, tronco recto y escamoso y raices superficiales""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FEucalyptus%20globulus%20Labill%2FEucalyptus%20globulus2.jpg?alt=media&token=63b085bf-ca70-4c73-a7c7-7a0358f6e949",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FEucalyptus%20globulus%20Labill%2FEucalyptus%20globulus1.JPG?alt=media&token=5d5a8233-f88b-4bc9-9e91-7eb34d09dbaa",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[0],
          diagnosisList[8].categories[3]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Syzygium paniculatum",
        name: "Eugenia",
        family: "MYRTACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Syzygium%20paniculatum ",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description: """Eliptica, acuminada, rojizas""",
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FEucalyptus%20globulus%20Labill%2FEucalyptus%20globulus1.JPG?alt=media&token=5d5a8233-f88b-4bc9-9e91-7eb34d09dbaa",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FSyzygium%20paniculatum%20Gaertn%2FSyzygium%20paniculatum2.jpg?alt=media&token=85e74504-d018-45f7-b02e-e0e99bb383de",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[1],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[5],
          diagnosisList[8].categories[9]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Paraserianthes lophantha",
        name: "Acacia sabanera",
        family: "LEGUMINOSAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Paraserianthes%20lophantha",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description:
            """foiolos minusculos con enves blancuzco, y presencia de nectarios, ramas, peciolo y raquis de color rojizo-morado, """,
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FParaserianthes%20lophantha%20(Willd.)%20ICNielsen%2FParaserianthes%20lophantha1.jpg?alt=media&token=9ae1d527-b4e6-4316-8abd-6eb99759b54a",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FParaserianthes%20lophantha%20(Willd.)%20ICNielsen%2FParaserianthes%20lophantha2.jpg?alt=media&token=8cafa2bc-7a17-4fad-b33c-4f2044706d04",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[5],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[0],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[5],
          diagnosisList[8].categories[0]
        ]));
    id++;
    HomeScreen.specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Dodonaea viscosa",
        name: "Hayuelo",
        family: "SAPINDACEAE",
        webUrl:
            "http://herbario.udistrital.edu.co/buscador/specimens/results/type:basicherb/field:Species/q:Dodonaea%20viscosa",
        literature: [
          "Mahecha Vega, G. E., Cadena Carreño, H. G., Chaparro Guerra, J. A., & Sánchez Hurtado, F. (2010). Arbolado Urbano de Bogotá: Identificación, descripción y bases para su manejo. Bogotá: Alcaldía Mayor de Bogotá; Secretaría Distrital de Ambiente; Jardín Botánico de Bogotá José Celestino Mutis. 2010.."
        ],
        description:
            """froma eliptico lanceolada, de consistencia coriaceae,glabras, con borde entero y presencia de yemas pegajosas, base cuneada y apice acuminado """,
        image1Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FDodonaea%20viscosa%20(L.)%20Jacq%2FDodonea%20viscosa2.jpg?alt=media&token=424a27dd-9bf5-4452-914a-a271057f5760",
        image2Url:
            "https://firebasestorage.googleapis.com/v0/b/flower-bucket-64d67.appspot.com/o/Especies%2FDodonaea%20viscosa%20(L.)%20Jacq%2FDodonaea%20viscosa1.jpg?alt=media&token=da8d52b9-e88a-4d60-8f60-50930d34e227",
        categories: [
          diagnosisList[0].categories[2],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[1],
          diagnosisList[6].categories[1],
          diagnosisList[7].categories[5],
          diagnosisList[8].categories[3]
        ]));
    id++;

    filteredSpecieList = List.from(HomeScreen.specieList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBar(context: context, title: "Flower Bucket", showMenu: true),
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: buildDrawer(context: context),
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: buildBody()),
    );
  }

  buildBody() {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NormalText(
              diagnosisList[currentDiagnosisIndex].name,
              weight: FontWeight.bold,
              color: DeepBlueColorScheme.secondary,
            )
          ],
        ),
      ),
      Flexible(
        child: Container(
          child: ListView(
              scrollDirection: Axis.horizontal, children: buildDiagnosis()),
        ),
      ),
      Divider(),
      Flexible(
        child: SingleChildScrollView(
          child: Column(children: buildSpecies()),
        ),
        flex: 4,
      )
    ]);
  }

  buildSpecies() {
    List<Widget> currentSpecies = [];
    filteredSpecieList.forEach((element) {
      currentSpecies.add(GestureDetector(
          onTap: () {
            HomeScreen.selectedElement = element;
            Navigator.of(context).pushNamed(SpecieViewScreen.routeName);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54, width: 2),
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    NormalText(
                      element.scientificName,
                      align: TextAlign.start,
                      weight: FontWeight.bold,
                      style: FontStyle.italic,
                    ),
                  ],
                ),
              ),
              Row(children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          element.image1Url,
                          height: 150,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.5 - 20,
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(left: 5, right: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            element.image2Url,
                            height: 150,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.5 - 20,
                          )
                        ],
                      )),
                )
              ]),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NormalText(
                      element.family,
                      align: TextAlign.end,
                      weight: FontWeight.bold,
                    ),
                    NormalText(
                      element.name,
                      align: TextAlign.end,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              )
            ]),
          )));
    });
    return currentSpecies;
  }

  buildDiagnosis() {
    List<Widget> currentDiagnosis = [];
    if (currentDiagnosisIndex > 0) {
      currentDiagnosis.add(GestureDetector(
        child: Padding(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 50,
                  )),
              Container(
                width: 80,
                child: NormalText(
                  "Volver",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(10),
        ),
        onTap: () {
          setState(() {
            currentDiagnosisIndex = currentDiagnosisIndex -= 1;
            selectedCategories.removeLast();
            filteredSpecieList = getFilteredSpecies();
          });
        },
      ));
    }

    currentDiagnosis.add(GestureDetector(
      child: Padding(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 80,
                height: 80,
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 50,
                )),
            Container(
              width: 80,
              child: NormalText(
                "Omitir",
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
      onTap: () {
        setState(() {
          currentDiagnosisIndex = currentDiagnosisIndex + 1;
          selectedCategories.add(CategoryModel(id: "-1"));
        });
      },
    ));
    if (currentDiagnosisIndex >= diagnosisList.length) {
      return currentDiagnosis;
    }
    diagnosisList[currentDiagnosisIndex].categories.forEach((element) {
      currentDiagnosis.add(GestureDetector(
        child: Padding(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(element.imageUrl), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 80,
                child: NormalText(
                  element.name,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(10),
        ),
        onTap: () {
          setState(() {
            currentDiagnosisIndex = currentDiagnosisIndex + 1;
            selectedCategories.add(element);
            filteredSpecieList = getFilteredSpecies();
          });
        },
      ));
    });
    return currentDiagnosis;
  }

  getFilteredSpecies() {
    List<SpecieModel> newFilteredSpecieList = [];

    HomeScreen.specieList.forEach((SpecieModel specie) {
      bool containsAll = true;
      selectedCategories.forEach((CategoryModel category) {
        if (category.id != "-1") {
          containsAll = containsAll && specie.categories.contains(category);
        }
      });
      if (containsAll) {
        newFilteredSpecieList.add(specie);
      }
    });
    return newFilteredSpecieList;
  }
}
