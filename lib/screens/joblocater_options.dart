
import 'package:flutter/material.dart';

import 'login/login.dart';


class JobLocateOptions extends StatelessWidget {
  const JobLocateOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.only(bottom: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Image.asset('assets/images/jobsearc2.png',
                height: 190,
                width: 250,
              ),
              Image.asset('assets/images/job-search.png',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 20),
              Text('Helping You Find A Job',
                style: TextStyle(
                    color: Colors.brown[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              const Text('WithOut Looking ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Already have an Account?',
                    style: TextStyle(
                        color: Colors.grey[600]
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen())
                    );
                  },
                      child: const Text('Sign In',
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      )
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
                  color: Colors.brown,
                  onPressed: (){

                  },
                  icon: const Icon(Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                  label: const Text('Create an account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
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
                  color: Colors.blue,
                  onPressed: (){
                  },
                  icon: const Icon(Icons.facebook,
                    color: Colors.white,

                  ),
                  label: const Text('Sign Up With Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
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
                  color: Colors.redAccent,
                  onPressed: (){
                  },
                  icon: const Icon(Icons.language,
                    color: Colors.white,
                  ),
                  label: const Text('Sign Up With Google',
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
