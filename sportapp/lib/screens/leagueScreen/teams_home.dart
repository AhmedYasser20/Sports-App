import 'package:flutter/material.dart';
import 'package:sportapp/api/teams_api.dart';
import 'package:sportapp/api/top_scorers.dart';

class TeamsScreens extends StatefulWidget {
  const TeamsScreens({super.key});

  @override
  State<TeamsScreens> createState() => _TeamsScreensState();
}

class _TeamsScreensState extends State<TeamsScreens> {
  late Future<TeamsApis> futuredata;
  late Future<TopScorersApis> top_scorers;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futuredata = fetchdata('1');
    top_scorers=fetchTopPlayers('1');
  }
  @override
  Widget build(BuildContext context) {
    var recvData=ModalRoute.of(context)?.settings.arguments as String ;
    setState(() {
      futuredata = fetchdata(recvData);
      top_scorers=fetchTopPlayers(recvData);
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Teams"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Teams",
              ),
              Tab(
                text: "Top Scores",
              )
            ])),
        body: TabBarView(children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Search Bar',
                        focusColor: Color.fromRGBO(35, 8, 9, 0.612),
                        hoverColor: Color.fromRGBO(27, 7, 8, 0.612),
                        prefixIconColor: Color.fromRGBO(30, 7, 8, 0.612),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)))),
                            SizedBox(height: 20,),
                            Container(
        child: FutureBuilder<TeamsApis>(
          future: futuredata,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(color: Color.fromARGB(255, 46, 2, 4));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              final TeamData = snapshot.data!.result;
              return Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                          itemCount: TeamData.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "PlayersOfTeam",arguments: TeamData[index]["team_key"].toString());
                          },
                          child: Column(
                            children: [SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(TeamData[index]["team_logo"])),
                              SizedBox(height: 5,),
                              Text(TeamData[index]["team_name"])
                              ],
                          ),
                        );
                      }),
                );
            } else {
              // Handle the case where data is not available
              return Text('No data available.');
            }
          },
        ),
      ),
      
              ],
            ),
          ),
          Container(
        child: FutureBuilder<TopScorersApis>(
          future: top_scorers,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(color: Color.fromARGB(255, 46, 2, 4));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else if (snapshot.hasData) {
              final TopPlayers = snapshot.data!.result;
              return Expanded(
                  child: ListView.builder(
                    itemCount: TopPlayers.length,
                    itemBuilder:(BuildContext context,int idx) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           
                             
                        Text(TopPlayers[idx]['player_name']),
                        Text(TopPlayers[idx]['goals'].toString()),    
                        ],
                      );
                    }
                    
                     ),
                );
            } else {
              // Handle the case where data is not available
              return Text('No data available.');
            }
          },
        ),
      ),
        ]),
      ),
    );
  }
}
