import 'package:flutter/material.dart';
import 'package:job_locater/screens/joblocater_options.dart';
import 'change_pass.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff3F0000), Colors.brown],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/images/male.jpeg'),
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text('Ibrahim Khan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Web Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: FlatButton.icon(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(50)),
                            color: Colors.redAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ChangePassword()));
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: FlatButton.icon(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(50)),
                            color: Colors.blueGrey,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const JobLocateOptions()));
                            },
                            icon: const Icon(
                              Icons.login_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(children: [
                                Text(
                                  'Birthday',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 14.0),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  'April 7th',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                )
                              ]),
                            ),
                            Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                          color: Colors.grey[400], fontSize: 14.0),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Text(
                                      '19 yrs',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Center(
                  child: Card(
                      margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                      child: SizedBox(
                          width: 350.0,
                          height: 320.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Information",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Ibrahim Khan",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.alternate_email,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Ibrahim@gmail.com",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.code,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Post Code",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "33460",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.signal_wifi_statusbar_null,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Status",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Test",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )))),
            ),
          ],
        ),
      ),

    );
  }
}
