import 'package:flutter/material.dart';
import 'package:flutter_task/controller/profile_controller.dart';
import 'package:flutter_task/model/profile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Profile _profile = ProfileController.getProfile();

  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _profileImage(context),
        _profileTitle(context),
      ],
    );
  }

  Widget _profileImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .33,
      color: Color(0xFF39796B),
    );
  }

  Widget _profileTitle(BuildContext context) {
    double positionedTop = MediaQuery.of(context).size.height * 0.25;
    return Positioned(
      top: positionedTop,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: _visible ? 1 : 0,
        duration: Duration(seconds: 1),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: _profile.user.image,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              _profile.user.name,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              _profile.user.email,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _favAndSettingProfile(context, 'المفضله', Icons.star),
                _favAndSettingProfile(context, 'الإعدادات', Icons.settings),
                _favAndSettingProfile(context, 'تعديل بياناتى', Icons.edit),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _favAndSettingProfile(BuildContext context, String name, icon) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffB2DFDB),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.grey.shade800),
            ),
          ),
        ],
      ),
    );
  }
}
