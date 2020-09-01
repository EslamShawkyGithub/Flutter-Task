import 'package:flutter/material.dart';
import 'package:flutter_task/model/profile.dart';
import 'package:flutter_task/model/user.dart';

class ProfileController {

  static Profile getProfile(){
    return Profile(
       user: User(
         name: 'إسلام شوقى',
         email: 'Eslam@gmail.com',
         image: ExactAssetImage('assets/images/profile/user.jpg',),
    ),
    );
  }

}