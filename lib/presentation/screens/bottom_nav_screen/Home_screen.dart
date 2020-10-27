import 'package:flutter/material.dart';
import 'package:simple_ui_designe/core/designe_util.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      'asset/bugatti-chiron-pur-sport-106-1582836604.jpg' ,
                      fit: BoxFit.cover, width: MediaQuery.of(context).size.width,
                      height: 200,),
                  ),
                  commenRow(),
                ],
              ),
             SizedBox(
               height: 15,
             ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*0.9,
              child:  SingleChildScrollView(
                child: Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only( right: 15),
                      child:  Main_text('تصفح علي حسب نوع السياره'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15 , right: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cars_image.length,
                        itemBuilder: ( BuildContext context, index){
                          return Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  gener_Card(
                                    cars_image[index],
                                  ),
                                  Main_text(cars_name[index], ),
                                ]
                            ),

                          );
                        },
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10 , bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Main_text('تصفح حسب الماركه'),
                            InkWell(
                              child:   Main_text('الكل'),
                              onTap: (){},
                            )
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only( left: 10 , right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: logo_image.length,
                              itemBuilder: ( BuildContext context, index){
                                return Container(
                                  padding: EdgeInsets.only( left: 5),
                                  child: ClipRect(
                                    child: logo_image[index],
                                  ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  )
                                );
                              },
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10 , bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Main_text('جديد الوكالات'),
                             InkWell(
                               child:  Main_text('الكل'),
                               onTap: (){},
                             )
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only( left: 10 , right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cars_image.length,
                              itemBuilder: ( BuildContext context, index){
                                return Column(
                                      children: [
                                       card_container(
                                         ClipRect(
                                           child: cars_image[index],
                                         ),
                                       ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            Main_text('Audio A8'),
                                            Main_text('تبدا من 12900 ك.د'),

                                          ],
                                        )
                                      ],
                                    );

                              },
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10 , bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Main_text('فيديو'),
                              InkWell(
                                child: Main_text('الكل'),
                                onTap: (){},
                              ),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only( left: 10 , right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cars_image.length,
                              itemBuilder: ( BuildContext context, index){
                                return card_container(
                                      ClipRect(
                                        child: cars_image[index],
                                      ),
                                    );
                              },
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
