

import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:job_locater/model/job_category.dart';
import 'package:job_locater/model/recommended_model.dart';
import 'package:job_locater/widgets/job_card.dart';
import 'package:job_locater/widgets/recommended_card.dart';

import '../../widgets/google_map_widget.dart';
import '../createresume/create_resume.dart';
import '../jobLocation/near_jobs.dart';




class JobLocaterHome extends StatefulWidget {
  const JobLocaterHome({Key? key}) : super(key: key);

  @override
  _JobLocaterHomeState createState() => _JobLocaterHomeState();
}

class _JobLocaterHomeState extends State<JobLocaterHome> {
  final List<RecommendedModel> recommended = RecommendedModel.recommended.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(children: <Widget>[
                      Text(
                        'Job Locator',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.brown, spreadRadius: 2),
                            ],
                          ),
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox.fromSize(
                                size: const Size(86, 86), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: const Color(0xff3F0000), // button color
                                    child: InkWell(
                                      splashColor: Colors.green, // splash color
                                      onTap: () {

                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(
                                            Icons.business_center_outlined,
                                            color: Colors.white,
                                          ), // icon
                                          Text(
                                            "Applied Job",
                                            style: TextStyle(color: Colors.white),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox.fromSize(
                                size: const Size(86, 86), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: const Color(0xff3F0000), // button color
                                    child: InkWell(
                                      splashColor: Colors.green, // splash color
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => JobLocatorKmHome()
                                            ));
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(
                                            Icons.local_fire_department_outlined,
                                            color: Colors.white,
                                          ), // icon
                                          Padding(
                                            padding: EdgeInsets.only(left: 19.0),
                                            child: Text(
                                              "Jobs in 100km",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox.fromSize(
                                size: const Size(86, 86), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: const Color(0xff3F0000), // button color
                                    child: InkWell(
                                      splashColor: Colors.green, // splash color
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => CreateResume()
                                            ));
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(
                                            Icons.contact_page,
                                            color: Colors.white,
                                          ), // icon
                                          Padding(
                                            padding: EdgeInsets.only(left: 20.0),
                                            child: Text(
                                              "Create Resume",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const GoogleMapWidget(),

                      const SizedBox(height: 20),
                      const Text(
                        'Most Popular',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      const SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.59,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                      ),
                        items: JobsCategory.jobs.map((category) => JobsCard(category: category)).toList(),

                    ),
                      const SizedBox(height: 20),
                      const Text('Recommended',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: recommended.length,
                        itemBuilder: (context, index){
                          return RecommendedCard(recommendedModel: recommended[index]);

                        },

                      )

                    ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
