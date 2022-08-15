import 'package:flutter/material.dart';

class CreateResume extends StatefulWidget {
  @override
  _CreateResumeState createState() => _CreateResumeState();
}

class _CreateResumeState extends State<CreateResume> {
  TextEditingController fName = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController proffesion = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController budget1 = TextEditingController();
  TextEditingController budget2 = TextEditingController();
  List<Widget> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3F0000),
        title: const Text('Edit Resume'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Create Resume',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const SizedBox(height: 40),
              Row(children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: fName,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'First Name'),
                  ),
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: TextField(
                    controller: contact,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.contact_page),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Contact'),
                  ),
                ),
              ]),
              const SizedBox(height: 15),
              TextField(
                controller: proffesion,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.work),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Job Title'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: country,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Education'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: language,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Collage'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: budget1,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'University'),
              ),
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.perm_identity_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Skill',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.safety_divider),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Percentage',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.perm_identity_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Skill',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.safety_divider),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Percentage',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.perm_identity_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Skill',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: budget2,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.safety_divider),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Percentage',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: FlatButton.icon(
                  shape: RoundedRectangleBorder(side: const BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(50)),
                  color: const Color(0xff3F0000),
                  onPressed: (){
                  },
                  icon: const Icon(Icons.language,
                    color: Colors.white,
                  ),
                  label: const Text('Save',
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
    );
  }
}
