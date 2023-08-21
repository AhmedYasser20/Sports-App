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
    futuredata = fetchdata('5');
  }
  @override
  Widget build(BuildContext context) {
    var recvData=ModalRoute.of(context)?.settings.arguments as String ;
    setState(() {
      futuredata = fetchdata(recvData);
    });
    return  Scaffold(
      appBar: AppBar(backgroundColor:  Colors.black,),
      body: Container(
        child: FutureBuilder<Leaguesapis>(
          future: futuredata,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While the future is loading, show a progress indicator
              return CircularProgressIndicator(color: Color.fromARGB(255, 46, 2, 4));
            } else if (snapshot.hasError) {
              // If there's an error, display the error message
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              // If data is available, display it
              final countryData = snapshot.data!.result;
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
