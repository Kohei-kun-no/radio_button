import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RadioButton Demo',
      home: HomeScreen(),
    );
  }
}

enum RadioValue { FIRST, SECOND, THIRD, FOURTH, FIFTH, SIXTH, SEVENTH, EIGHTH, NINTH }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RadioValue _gValue = RadioValue.FIRST;
  RadioValue _aValue = RadioValue.FIRST;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  '性別',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('男性'),
                      value: RadioValue.FIRST,
                      groupValue: _gValue,
                      onChanged: (value) => _onGenderRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('女性'),
                      value: RadioValue.SECOND,
                      groupValue: _gValue,
                      onChanged: (value) => _onGenderRadioSelected(value),
                    ),
                  ),
                ],
              ),
            ),
            RadioListTile(
              title: Text('その他'),
              value: RadioValue.THIRD,
              groupValue: _gValue,
              onChanged: (value) => _onGenderRadioSelected(value),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  '年齢',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('10代'),
                      value: RadioValue.FIRST,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('20代'),
                      value: RadioValue.SECOND,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('30代'),
                      value: RadioValue.THIRD,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('40代'),
                      value: RadioValue.FOURTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('50代'),
                      value: RadioValue.FIFTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('60代'),
                      value: RadioValue.SIXTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('70代'),
                      value: RadioValue.SEVENTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('80代'),
                      value: RadioValue.EIGHTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: RadioListTile(
                      title: Text('90代以上'),
                      value: RadioValue.NINTH,
                      groupValue: _aValue,
                      onChanged: (value) => _onAgeRadioSelected(value),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  '居住地',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  '郵便番号',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  _onGenderRadioSelected(value) {
    setState(() {
      _gValue = value;
    });
  }

  _onAgeRadioSelected(value) {
    setState(() {
      _aValue = value;
    });
  }

}