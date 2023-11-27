import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: _body(),
          ),
        ),
      ),
    );
  }
}

Widget _body() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        _textField(),
        SizedBox(height: 27),
        _cityDetail(),
        SizedBox(height: 50),
        _temperatureDetail(),
        SizedBox(height: 50),
        _extraWeatherDetail(),
        SizedBox(height: 50),
        _buttomText(),
        SizedBox(height: 20),
        _buttomDetail(),
      ],
    ),
  );
}

Row _textField() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter Citi Name',
            hintStyle: TextStyle(color: Colors.white, fontSize: 18),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
          autofocus: false,
        ),
      ),
    ],
  );
}

Column _cityDetail() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 13),
        child: Text(
          'Almaty, KZ',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      Text(
        'Friday, Mar 20, 2023',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 85,
      ),
      Column(
        children: [
          Text(
            '14 °F',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 35),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 35),
          Text(
            '3',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 35),
          Text(
            '20',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Text _buttomText() {
  return Text(
    '7-DAY WEATHER FORECAST',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w300,
    ),
  );
}

SizedBox _buttomDetail() {
  final dayNameIsWeek = {
    0: 'Sunday',
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday',
  };

  final temperatures = {
    0: 6,
    1: 5,
    2: 22,
    3: 4,
    4: 10,
    5: 11,
    6: 20,
  };

  return SizedBox(
    height: 130,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        final dayName = dayNameIsWeek[index];
        final temp = temperatures[index];

        return Container(
          width: 180,
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: Colors.white.withOpacity(0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  '$dayName',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$temp °F ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 45,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}
