import 'dart:ffi';

import 'package:flutter/material.dart';

import '../api/player_of_team.dart';

class PlayersOfTeam extends StatefulWidget {
  const PlayersOfTeam({super.key});

  @override
  State<PlayersOfTeam> createState() => _PlayersOfTeamState();
}

class _PlayersOfTeamState extends State<PlayersOfTeam> {
  late Future<PlayersOfTeamApis> futuredata;
   void initState() {
    // TODO: implement initState
    super.initState();
    futuredata = fetchdata('1');
  }
  @override
  Widget build(BuildContext context) {
    var recvData=ModalRoute.of(context)?.settings.arguments as String ;
    setState(() {
      futuredata = fetchdata(recvData);
    });
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Container(
        child: FutureBuilder<PlayersOfTeamApis>(future: futuredata, 
           builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(color: Color.fromARGB(255, 46, 2, 4));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {

                final PlayerData = snapshot.data!.result;
                return GridView.builder(
                      shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                            itemCount:8,
                        itemBuilder: (BuildContext context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "playerInfo",arguments: PlayerData[index]);
                            },
                            child: Container(
                              child: Column(
                                children: [SizedBox(
                                  height: 50,
                                  width: 50,
                                  
                                  child: Image.network(PlayerData[index]["player_image"]!=null?PlayerData[index]["player_image"]:
                                  "",errorBuilder: (context, error, stackTrace) {
                                        return Text('Error loading image');
                                   },)
                                  ),
                                  SizedBox(height: 5,),
                                  Text(PlayerData[index]["player_name"])
                                  ],
                              ),
                            ),
                          );
                        });
              } else {
                // Handle the case where data is not available
                return Text('No data available.');
              }
            },),
      ),
    );
  }
}