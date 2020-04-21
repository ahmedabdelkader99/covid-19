import 'package:covid/myscreen.dart';
import 'package:flutter/material.dart';
import 'get_Api/getData.dart';
import 'model_APi/model.dart';


class future extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot)
        {
          if (snapshot.hasData)
          {
            model mymodel = snapshot.data;
            return Screen(data: mymodel,);
          }
          else
          {
            return Center(child: CircularProgressIndicator(),);
          }
        }
    );
  }
}
