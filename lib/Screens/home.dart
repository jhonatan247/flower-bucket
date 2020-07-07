import 'package:flower_bucket/Models/category.dart';
import 'package:flower_bucket/Models/diagnosis.dart';
import 'package:flower_bucket/Models/specie.dart';
import 'package:flower_bucket/Widgets/app_bar.dart';
import 'package:flower_bucket/Widgets/drawer.dart';
import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home";
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hasInitializedList = false;
  List<DiagnosisModel> diagnosisList;
  List<SpecieModel> specieList;
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
            "https://img.freepik.com/vector-gratis/palma-coco-verde_87436-51.jpg?size=338&ext=jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Arbol",
        imageUrl:
            "https://previews.123rf.com/images/naropano/naropano1606/naropano160600544/58727700-imagen-%C3%81rbol-objeto-%C3%81rbol-jpg-aislado-en-el-fondo-blanco.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Arbusto",
        imageUrl:
            "https://previews.123rf.com/images/tiler84/tiler841702/tiler84170200044/72486174-planta-de-arbusto-de-pino-aislada-sobre-fondo-blanco-3d-ilustraci%C3%B3n.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Hierba",
        imageUrl:
            "https://previews.123rf.com/images/iamnee/iamnee1403/iamnee140300168/26800805-vegetales-y-hierbas-ilustraci%C3%B3n-vectorial-de-una-hierba-de-lim%C3%B3n-fresco-plantaci%C3%B3n-en-el-jard%C3%ADn-.jpg"));
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
            "https://lorenauss.files.wordpress.com/2009/06/ccnn902003.jpg?w=500&h=378"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Compuesta palmeada",
        imageUrl:
            "https://thumbs.dreamstime.com/b/hojas-del-sapote-blanco-hoja-palmeado-compuesta-con-el-margen-completo-%C3%A1rbol-teniendo-cinco-alargados-verdes-atadas-en-un-punto-153332889.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Paripinnada",
        imageUrl:
            "https://3.bp.blogspot.com/-Vlolwwa46dY/W9dwxA1BCLI/AAAAAAAAumE/gGUUyNcnCr881iLW_xZG90QXqE6PnqCnQCLcBGAs/s1600/especie_032_02.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Imparipinnada",
        imageUrl:
            "https://3.bp.blogspot.com/-WfCiiFSPkeU/W9dsleYMS1I/AAAAAAAAulc/73BOdX74AZwcQlqn3mO0RlCEU2bOP2dOwCEwYBhgL/s1600/c3277f1b51b9724fdfbbf4afac66763b.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Trifoliolada",
        imageUrl:
            "https://4.bp.blogspot.com/-7Rg-U4xOZNE/W9dzOMsG5TI/AAAAAAAAunA/JmFGPAHf1eUsb93ghCm2Zc2WqOqK-PJWgCLcBGAs/s640/descarga.jpeg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Bipinnada",
        imageUrl:
            "https://4.bp.blogspot.com/-7Rg-U4xOZNE/W9dzOMsG5TI/AAAAAAAAunA/JmFGPAHf1eUsb93ghCm2Zc2WqOqK-PJWgCLcBGAs/s640/descarga.jpeg"));
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
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdtl4VGwRBnUNIoa5cj3CJwAFxaALTQaHADw&usqp=CAU"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Opuesta",
        imageUrl:
            "https://lh3.googleusercontent.com/proxy/TpZ8Q8_rMaA3fjE6AkczYH_o5KT28XD-bZQXeeTR8SbCJc-Iwu7L5N8YPbbqMosGZPvpQmjTcoLsvpyygt9dJwJoxzi1DjDbmMpi4W37nKjSPg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Verticilada",
        imageUrl:
            "https://lh3.googleusercontent.com/proxy/-oLpnF8EXGIIe3y0LZemRLzc7qfrGyxtR7PQ4SK36KJ4X4CeT-eb2SvDCDLunzKQomZ7reV_Nn3eKMXs3yQFzixBPMFAw905pFYxGlq_oqTjS4q9S7hvHOmUCEUAzNI"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Filotaxia", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Con Esttipula",
        imageUrl: "https://www.ugr.es/~mcasares/Im%E1genes/Est%EDpulas.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sin Estipula",
        imageUrl:
            "https://sites.google.com/site/formacionagricola/_/rsrc/1330794315798/home/partes-de-la-hoja/partes.jpg?height=311&width=400"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Estipula", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Con olor",
        imageUrl: "https://image.flaticon.com/icons/svg/2919/2919990.svg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sin olor",
        imageUrl: "image.flaticon.com/icons/svg/2890/2890280.svg"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Olor", categories: categories));
    diagnosisId++;

    categories = List();
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Solitaria",
        imageUrl:
            "https://2.bp.blogspot.com/-W-KDnLeWByo/WOr-2GxElFI/AAAAAAAANm8/DCyC7kNFRfcoZ0dZ9y4_RCvQa4mVMaC0gCLcB/s640/2017-04-09_2340.png"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Espiga",
        imageUrl:
            "https://cdn.pixabay.com/photo/2017/03/06/15/33/stem-2121775_960_720.png"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Cima",
        imageUrl:
            "https://img2.freepng.es/20180608/pcg/kisspng-inflorescence-leaf-cima-peduncle-raceme-5b1af4ad8a1ac2.4669000115284932295657.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Amento",
        imageUrl:
            "https://viverolimache.cl/wp-content/uploads/2018/09/Abedul-Betula-Pendula.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Capitulo",
        imageUrl:
            "https://sites.google.com/a/arbabajojarama.com/herbario/_/rsrc/1468736180983/flor-compuestacaptulo/Ilustraci%C3%B3nCompuestas.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Racimo",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Raceme.svg/137px-Raceme.svg.png"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Corimbo",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/6/65/Tuil.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Umbela",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Scherm.jpg/220px-Scherm.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Umbela Compuesta",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Samengesteld_scherm.jpg/220px-Samengesteld_scherm.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Panicula",
        imageUrl:
            "https://img2.freepng.es/20190615/huv/kisspng-inflorescence-panicle-botany-spikelet-flower-image-inflorescences-panicle-kwiatostan-wiecha-fa-5d04aefbab0929.2716140815605880277006.jpg"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Sicono",
        imageUrl:
            "https://cmapspublic3.ihmc.us/rid=1JSZ002NK-1TJWPS2-TV/Sicono%20(Ficus%20carica)_4.png"));
    id++;
    categories.add(CategoryModel(
        id: "$id",
        diagnosisId: "$diagnosisId",
        name: "Ciato",
        imageUrl:
            "https://lh3.googleusercontent.com/proxy/6rRBF6Oo_co3LlLBIwMQbbbSDZ7Mvs_foHWx4l7pKWgwlHp8K01EhFgdEa99H2jBqVo95nbTugNXdz-kS7V2oobWVRu4t8riPhPYDHCtMpTa_OL-"));
    id++;
    diagnosisList.add(DiagnosisModel(
        id: "$diagnosisId", name: "Inflorescencia", categories: categories));
    diagnosisId++;

    specieList = List();
    id = 1;
    specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Senna viarum",
        name: "Alcaparro",
        family: "Leguminosae",
        image1Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        image2Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        categories: [
          diagnosisList[0].categories[1],
          diagnosisList[1].categories[2],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[9]
        ]));
    id++;
    specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Sparmannia africana",
        name: "Algodon africano",
        family: "Malvaceae",
        image1Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        image2Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        categories: [
          diagnosisList[0].categories[2],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[1],
          diagnosisList[5].categories[8]
        ]));
    id++;
    specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Lupinus bogotensis",
        name: "Lupino",
        family: "Leguminosae",
        image1Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        image2Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        categories: [
          diagnosisList[0].categories[3],
          diagnosisList[1].categories[5],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[0],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[1]
        ]));
    id++;
    specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Lycianthes lycioides",
        name: "Gurrubo",
        family: " Solanaceae",
        image1Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        image2Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        categories: [
          diagnosisList[0].categories[2],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[1],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[2]
        ]));
    id++;
    specieList.add(SpecieModel(
        id: "$id",
        scientificName: "Liquidambar styraciflua",
        name: "Liquidambar, estoraque",
        family: "  Altingiaceae",
        image1Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        image2Url:
            "http://t1.gstatic.com/images?q=tbn:ANd9GcSyJiwWgQMSL3tJyPdLmoErNDTLVtrJ607ufq9qdWuEyfokYaFpgaeX1kUTI0hFbAlere3mDKHFYDJWVe24sOQ",
        categories: [
          diagnosisList[0].categories[2],
          diagnosisList[1].categories[0],
          diagnosisList[2].categories[0],
          diagnosisList[3].categories[1],
          diagnosisList[4].categories[0],
          diagnosisList[5].categories[3]
        ]));
    id++;

    filteredSpecieList = List.from(specieList);
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
      Flexible(
        child: Container(
          height: 140,
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
  buildSpecies(){
    List<Widget> currentSpecies = [];
    filteredSpecieList.forEach((element) {
      currentSpecies.add(GestureDetector(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        NormalText(element.scientificName),
                        Image.network(
                            element.image1Url)
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          NormalText(element.family),
                          Image.network(
                              element.image2Url)
                        ],
                      )),
                )
              ]),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
                child: NormalText(
                  element.name,
                  align: TextAlign.end,
                ),
              )
            ])));
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/15514693011556279653-512.png"),
                      fit: BoxFit.fill),
                ),
              ),
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
          });
        },
      ));
    }
    if(currentDiagnosisIndex >= diagnosisList.length){
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
            filteredSpecieList =  getFilteredSpecies();
          });
        },
      ));
    });
    return currentDiagnosis;
  }
  getFilteredSpecies(){
    List<SpecieModel> newFilteredSpecieList = [];

    specieList.forEach((SpecieModel specie) {
      bool containsAll = true;
      selectedCategories.forEach((CategoryModel category) {
        containsAll = containsAll && specie.categories.contains(category);
      });
      if(containsAll){
        newFilteredSpecieList.add(specie);
      }
    });
    return newFilteredSpecieList;
  }
}
