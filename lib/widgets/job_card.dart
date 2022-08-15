import 'package:flutter/material.dart';
import 'package:job_locater/model/job_category.dart';


class JobsCard extends StatelessWidget {

  JobsCategory category = JobsCategory();
   JobsCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
      SizedBox(
        height: 260,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    '${category.image}',
                    height: 100,
                  ),
                 // const SizedBox(height: 10),
                   Text(
                    '${category.category}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Text(
                        '${category.type}',
                        style: const TextStyle(
                            backgroundColor: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${category.salary}\$/hour',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]
    );
  }
}
