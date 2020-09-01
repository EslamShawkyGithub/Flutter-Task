import 'package:flutter/material.dart';
import 'package:flutter_task/model/home.dart';
import 'package:flutter_task/model/user.dart';

class HomeController {

    static Home getHomeData(){
      User user1 = User(
        name: 'Eslam Shawky',
        email: 'Eslam@gmail.com',
        image: ExactAssetImage('assets/images/profile/user.jpg',),
      );
      User user2 = User(
        name: 'Ahmed Shawky',
        email: 'Ahmed@gmail.com',
        image: ExactAssetImage('assets/images/profile/user2.png',),
      );
      return Home(
        user: [
          user1,
          user2,
        ],
      );
    }

}