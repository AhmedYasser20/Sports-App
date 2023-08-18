import 'dart:ffi';

import 'package:flutter/material.dart';


import '../../api/countries_apis.dart';
import '../../widgets/countries_widgets.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  late Future<Countryapi> futuredata;
  @override
  void initState() {
    super.initState();
    futuredata = fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Container(
        child: FutureBuilder<Countryapi>(
          future: futuredata,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While the future is loading, show a progress indicator
              return CircularProgressIndicator(color: Color(0xffff3a44));
            } else if (snapshot.hasError) {
              // If there's an error, display the error message
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              // If data is available, display it
              final countryData = snapshot.data!.result;
              return ListView.builder(
                itemCount: countryData.length-1,
                itemBuilder: (BuildContext context, int index) {
                  // Return the desired widget here based on the index
                  return Row(
                    children: [
                      CountryGridTile(countryData[index]),
                      SizedBox(width:MediaQuery.of(context).size.width*0.1,),
                      CountryGridTile(countryData[index+1]),
                    ],
                  );
                },
              );
            } else {
              // Handle the case where data is not available
              return Text('No data available.');
            }
          },
        ),
      ),
    );
  }
}

