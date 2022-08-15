
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_locater/widgets/bottom_navigation.dart';

class JobLocatorKmHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios)),
                    Text('Jobs in 100 Km',
                      style: GoogleFonts.roboto(
                        textStyle:  const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 350,
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.brown,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ListTile(
                            leading: Image.asset('assets/images/person.png',
                              height: 50,
                            ),
                            title: const Text('PHP Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),
                            ),
                            subtitle: const Text(
                                '2021-1-10'
                            ),
                          ),
                          const ListTile(
                            leading: Icon(Icons.location_on,
                              size: 30,
                              color: Colors.blue,
                            ),
                            title: Text('Location',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text('Rawalpindi'),
                          ),
                          const ListTile(
                            leading: Icon(Icons.business_center_outlined,
                              size: 30,
                              color: Colors.blue,
                            ),
                            title: Text('Designation',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text('Web Developer'),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            //width: 100,
                            height: 50,
                            child: FlatButton.icon(
                              shape: RoundedRectangleBorder(side: const BorderSide(
                                  color: Color(0xff3F0000),
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(50)),
                              color: const Color(0xff3F0000),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomNavigation()
                                    ));
                              },
                              icon: const Icon(Icons.open_in_new_sharp,
                                  color: Colors.white

                              ),
                              label: const Text('Apply',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.brown,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        ListTile(
                          leading: Image.asset('assets/images/person.png',
                            height: 50,
                          ),
                          title: const Text('Flutter Developer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),
                          ),
                          subtitle: const Text(
                              '2020-1-12'
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.location_on,
                            size: 30,
                            color: Colors.blue,
                          ),
                          title: Text('Location',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text('Islamabad'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.business_center_outlined,
                            size: 30,
                            color: Colors.blue,
                          ),
                          title: Text('Designation',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text('App Developer'),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          //width: 100,
                          height: 50,
                          child: FlatButton.icon(
                            shape: RoundedRectangleBorder(side: const BorderSide(
                                color: Color(0xff3F0000),
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                            color: const Color(0xff3F0000),
                            onPressed: (){},
                            icon: const Icon(Icons.open_in_new_sharp,
                                color: Colors.white

                            ),
                            label: const Text('Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.brown,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        ListTile(
                          leading: Image.asset('assets/images/person.png',
                            height: 50,
                          ),
                          title: const Text('React Developer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),
                          ),
                          subtitle: const Text(
                              '2019-1-11'
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.location_on,
                            size: 30,
                            color: Colors.blue,
                          ),
                          title: Text('Location',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text('Karachi'),
                        ),
                        const ListTile(
                          leading: Icon(Icons.business_center_outlined,
                            size: 30,
                            color: Colors.blue,
                          ),
                          title: Text('Designation',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text('Mobile Developer'),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          //width: 100,
                          height: 50,
                          child: FlatButton.icon(
                            shape: RoundedRectangleBorder(side: const BorderSide(
                                color: Color(0xff3F0000),
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                            color: const Color(0xff3F0000),
                            onPressed: (){},
                            icon: const Icon(Icons.open_in_new_sharp,
                                color: Colors.white

                            ),
                            label: const Text('Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
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
      ),
    );
  }
}
