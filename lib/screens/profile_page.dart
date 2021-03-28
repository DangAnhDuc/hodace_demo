import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hodace_app/theme/color/light_color.dart';
import 'package:hodace_app/theme/theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.background,
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/dev_info_ava.png",
                        height: 220,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 222,
                          height: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "MAKE AWESOME APPS",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: LightColor.purple,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Professional developer team",
                                style:
                                    TextStyle(fontSize: 19, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  IconTile(
                                    backColor: Color(0xffFEF2F0),
                                    imgAssetPath: "assets/email.png",
                                  ),
                                  IconTile(
                                    backColor: Color(0xffFEF2F0),
                                    imgAssetPath: "assets/call.png",
                                  ),
                                  IconTile(
                                    backColor: Color(0xffFEF2F0),
                                    imgAssetPath: "assets/video_call.png",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About us",
                    style: TextStyle(fontSize: 22, color: LightColor.purple),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We are a small team of 'Senior Developers' each with a lot of experience and dedication to keeping up to date with all the latest tools and technology to create beautiful and modern applications and websites that satisfy user demand.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset("assets/mappin.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.7),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width -
                                          268,
                                      child: Text(
                                        "Etown 2, 364 Cong Hoa, Binh Tan, Ho Chi Minh City",
                                        style: TextStyle(color: Colors.grey),
                                      ))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Image.asset("assets/clock.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Working time",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.7),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width -
                                          268,
                                      child: Text(
                                        '''Monday - Friday
9am - 5pm''',
                                        style: TextStyle(color: Colors.grey),
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/map.png",
                        width: 180,
                      )
                    ],
                  ),
                  Text(
                    "Activity",
                    style: TextStyle(
                        color: Color(0xff242424),
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 16),
                          decoration: BoxDecoration(
                              color: LightColor.purple,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: LightColor.lightpurple,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Image.asset("assets/list.png")),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 130,
                                child: Text(
                                  "Mobile App",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 16),
                          decoration: BoxDecoration(
                              color: LightColor.purple,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: LightColor.lightpurple,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Image.asset("assets/list.png")),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 130,
                                child: Text(
                                  "Website",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  final String imgAssetPath;
  final Color backColor;

  IconTile({this.imgAssetPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          imgAssetPath,
          width: 20,
        ),
      ),
    );
  }
}
