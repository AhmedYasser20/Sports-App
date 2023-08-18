import 'package:flutter/material.dart';

import '../api/Leagues_apis.dart';
import '../widgets/leagues_widget.dart';



class Leagues_screen extends StatefulWidget {
  const Leagues_screen({super.key});

  @override
  State<Leagues_screen> createState() => _Leagues_screenState();
}

class _Leagues_screenState extends State<Leagues_screen> {



  late Future<Leaguesapis> futuredata;
  @override
  void initState() {
    super.initState();
    futuredata = fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: FutureBuilder<Leaguesapis>(
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
              print(countryData);
              return ListView.builder(
                itemCount: countryData.length,
                itemBuilder: (BuildContext context, int index) {
                  // Return the desired widget here based on the index
                  return LeaguesGridTile(countryData[index]);
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
