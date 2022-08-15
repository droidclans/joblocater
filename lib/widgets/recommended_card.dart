import 'package:flutter/material.dart';
import 'package:job_locater/model/recommended_model.dart';

class RecommendedCard extends StatelessWidget {
   RecommendedModel recommendedModel = RecommendedModel();
   RecommendedCard({Key? key, required this.recommendedModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        child: Card(
          child: ListTile(
            leading: recommendedModel.icon,
            title: Text('${recommendedModel.name}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text('${recommendedModel.type}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Text('${recommendedModel.salary}/hour',
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
