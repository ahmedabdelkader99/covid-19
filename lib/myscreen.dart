import 'package:flutter/material.dart';

import 'model_APi/model.dart';


class Screen extends StatelessWidget {
  final model data;

  Screen({this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.countriesStat.length,
      itemBuilder: (context, int index) {
        return Card(
          margin: EdgeInsets.all(8),
          child: (Container(
            padding: EdgeInsets.all(10),
            height: 110,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 5),
                        child: Text(
                          data.countriesStat[index].countryName,
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                // texts cases name
                Container(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'cases',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'recoverd',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'deaths',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                // values of texts
                Container(
                  padding: EdgeInsets.only(left: 80),
                  child: Column(
                    children: <Widget>[
                      Text(
                        data.countriesStat[index].cases,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data.countriesStat[index].totalRecovered,
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data.countriesStat[index].deaths,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}
