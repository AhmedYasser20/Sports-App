import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sportapp/l10n/locale_keys.g.dart';


import '../models/Leagues_apis.dart';
import '../widgets/leagues_widget.dart';
import 'HomeScreen/countries_screen.dart';

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
    var recvData = ModalRoute.of(context)?.settings.arguments as String;
    setState(() {
      futuredata = fetchdata(recvData);
    });
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Row(
          children: [
            Text(
              LocaleKeys.leagues,
              style: GoogleFonts.barriecito(
                color: Colors.amber,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              LocaleKeys.ofCountry,
              style: GoogleFonts.barriecito(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black38, Colors.amberAccent, Colors.black38],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: FutureBuilder<Leaguesapis>(
          future: futuredata,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Lottie.asset('assets/imgs/waiting2.json',repeat: true,height: 100,width: 100,);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              final countryData = snapshot.data!.result;
              return ListView.separated(
                itemCount: countryData.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.amber,
                    height: 1,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.5,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final leagueLogo = countryData[index]['league_logo'];
                  final leagueName = countryData[index]['league_name'];

                  if (leagueLogo == null || leagueName == null) {
                    return Container(); // Skip building the tile if logo or name is null
                  }

                  return Column(
                    children: [
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LeaguesGridTile(countryData[index]),
                        ],
                      ),
                    ],
                  );
                },
              );
            } else {
              return Text('No data available.');
            }
          },
        ),
      ),
    );
  }
}
