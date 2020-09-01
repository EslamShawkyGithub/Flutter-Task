import 'package:flutter/material.dart';
import 'package:flutter_task/controller/home_controller.dart';
import 'package:flutter_task/model/home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xffFFFFFF),
       child: homeWidgetsScreen(context),
    );
  }
}

Widget homeWidgetsScreen(BuildContext context){
  Home homeController = HomeController.getHomeData();
  return ListView.builder(
      itemCount:homeController.user.length,
      itemBuilder: (context , index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.5,
              child: Column(
                children: [
                  Row(
                    children: [

                      Column(
                        children: [
                          SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: homeController.user[index].image,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        padding: const EdgeInsets.only(top:24.0,left: 8),
                        child: Text(homeController.user[index].name,),
                      ),

                      iconsHome(context),

                    ],
                  ),

                  SizedBox(height: 16),
                  imageHome(context),
                  descriptionHome(context),

                ],
              ),
            ),
          ),
        );
      });
}

Widget iconsHome(BuildContext context){
  return Container(
    padding: EdgeInsets.only(top: 24),
    width: MediaQuery.of(context).size.width*0.5,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.share),
        Icon(Icons.save),
        Icon(Icons.favorite),
      ],
    ),
  );
}
Widget imageHome(BuildContext context){
  return Image.asset(
    'assets/images/home/tree.jpg',
    width: double.infinity,
    height: MediaQuery.of(context).size.height*0.3,
    fit: BoxFit.cover,
  );
}
Widget descriptionHome (BuildContext context){
  return Expanded(
    child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
        child: Text('Trees play a significant role in reducing erosion and moderating the climate.')
    ),
  );
}