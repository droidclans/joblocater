import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';


class CheckBoxesItems extends StatefulWidget {
  @override
  _CheckBoxesItemsState createState() => _CheckBoxesItemsState();
}

class _CheckBoxesItemsState extends State<CheckBoxesItems> {
  List? _myActivities;
  late String _myActivitiesResult;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

  _saveForm() {
    var form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: MultiSelectFormField(
             // autovalidate: false,
              chipBackGroundColor: Colors.blue,
              chipLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              dialogTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              checkBoxActiveColor: Colors.blue,
              checkBoxCheckColor: Colors.white,
              dialogShapeBorder: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              title: const Text(
                "My workouts",
                style: TextStyle(fontSize: 16),
              ),
              validator: (value) {
                if (value == null || value.length == 0) {
                  return 'Please select one or more options';
                }
                return null;
              },
              dataSource: const [
                {
                  "display": "Business management/Consulting",
                  "value": "Business management/Consulting",
                },
                {
                  "display": "Construction/property",
                  "value": "Construction/property",
                },
                {
                  "display": "Marketing/degital/IT",
                  "value": "Marketing/degital/IT",
                },
                {
                  "display": "Art & Design/Media Creative",
                  "value": "Art & Design/Media Creative",
                },
                {
                  "display": "Hospitality/Event Management",
                  "value": "Hospitality/Event Management",
                },
                {
                  "display": "Energy/Utilities",
                  "value": "Energy/Utilities",
                },
                {
                  "display": "HealthCare/Envirment/Aggriculture",
                  "value": "HealthCare/Envirment/Aggriculture",
                },
                {
                  "display": "Stem/Hr Recruitment",
                  "value": "Stem/Hr Recruitment",
                },
                {
                  "display": "Leisure/Tourism/Logistics/Transport",
                  "value": "Leisure/Tourism/Logistics/Transport",
                },
                {
                  "display": "Public Sector/Eduction/Military/Law",
                  "value": "Public Sector/Eduction/Military/Law",
                },
                {
                  "display": "Retail/Sales/Customer Service",
                  "value": "Retail/Sales/Customer Service",
                },
                {
                  "display": "Account/Finance",
                  "value": "Account/Finance",
                },
              ],
              textField: 'display',
              valueField: 'value',
              okButtonLabel: 'OK',
              cancelButtonLabel: 'CANCEL',
              hintWidget: const Text('Please choose one or more'),
              initialValue: _myActivities,
              onSaved: (value) {
                if (value == null) return;
                setState(() {
                  _myActivities = value;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: _saveForm,
              child: const Text('Save'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(_myActivitiesResult),
          )
        ],
      ),
    );

  }
}