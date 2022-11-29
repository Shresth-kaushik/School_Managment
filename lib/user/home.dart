import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 280,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.brown[700],
                    height: 180,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white
                                ),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/stanford.jpg"
                                    )
                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text("STANFORD PUBLIC SCHOOL",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("CBSE Aff.No:53**     Ph:0843-7519 ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,),
                                ),
                                // Text("Ph : 08434-75195",
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontSize: 12,),
                                // ),
                              ],
                            ),
                          ),
                          new Spacer(),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Icon(Icons.notifications_active, color: Colors
                                .white,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 125,
                    child: Container(
                      height: 180,
                      width: width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: width - 50,
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: Offset(0, 7),
                              )
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.brown,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      const Text("Contact Sources",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Spacer(),
                                      Text("@administration",
                                        style: TextStyle(
                                          color: Colors.brown[700],
                                          fontSize: 13,
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(3, 5, 5, 5),
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.message,
                                            size: 40,
                                            color: Colors.brown[700],
                                          ),
                                          Text("80598-75124")
                                          // Text("Message",
                                          // ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(3, 10, 15, 5),
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.call,
                                            size: 40,
                                            color: Colors.brown[700],
                                            textDirection:TextDirection.ltr,
                                          ),
                                          Text("1744-270696(school)"),
                                          Text("1744-259064(Boarding)")


                                          // Text("Call",
                                          // ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(3, 5, 5, 5),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            Icon(
                                              Icons.mail,
                                              size: 40,
                                              color: Colors.brown[700],
                                            ),
                                            Text("sf@gmail.com")
                                            // Text("Category",
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.brown,
                            radius: 12.0,
                            child: Icon(
                              Icons.camera_alt,
                              size: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        radius: 38.0,
                        backgroundImage: AssetImage(
                            "assets/images/teacher.jpg"),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text(
                        'M.S.Golvalker',
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                          color: Colors.brown,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Stanford Public School feels proud that its foundation was laid by a great visionary and enlightened leader of our times i.e M. S. Golvalkar popularly known as Sh. Guruji. Students of Stanford have a global presence today, many of them working in leadership positions in their respective fields.',
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0,5),
                  child: Container(
                    height: 150,
                    child:Swiper(
                      itemCount: 6,
                      viewportFraction: 0.5,
                      scale: 0.5,

                      // set width of the image

                      itemBuilder: (BuildContext context,int index) {
                        if (index == 0) {
                          return Image1("assets/images/bg1.jpg");
                        }
                        else if(index==1){
                          return Image1("assets/images/bg2.jpg");
                        }
                        else if(index==2){
                          return Image1("assets/images/bg3.jpg");
                        }
                        else if(index==3){
                          return Image1("assets/images/bg4.jpg");
                        }
                        else if(index==4){
                          return Image1("assets/images/bg5.jpg");
                        }
                        else {
                          return Image1(
                          ("assets/images/bg6.jpg")
                          );
                        }
                      },
                    ),


                  ),
                ),
          ],
        ),
      ),
    );
  }

  Widget Image1(dynamic image){
       return Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
             colorFilter: ColorFilter.mode(Colors.brown.withOpacity(0.9),BlendMode.dstATop),
             image: AssetImage(image),
           ),
           borderRadius: BorderRadius.all(Radius.circular(5)),
         ),
       );
}
}
