import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'teams_screen.dart';

class PlayerInfoScreen extends StatefulWidget {
  const PlayerInfoScreen({super.key});

  @override
  State<PlayerInfoScreen> createState() => _PlayerInfoScreenState();
}

class _PlayerInfoScreenState extends State<PlayerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    var playerData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TeamsScreens();
                  }),
                );
              },
            );
          },
        ),

        title: Row(children: [
          Text(
            "Choose",
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
            "Your Country..",
            style: GoogleFonts.barriecito(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        backgroundColor:
            Colors.transparent, // Make the original app bar transparent
        elevation: 0, // Remove the shadow
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black38,
                Colors.amberAccent,
                Colors.black38
              ], // Set your desired gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: playerData['player_image'] != null
                ? Image.network(playerData['player_image'])
                : Placeholder(), // Display player image or Placeholder if image is null
            title: Text(playerData['player_name'] ??
                'No Name'), // Display player name or 'No Name' if name is null
            subtitle: Text(
                'Player Type: ${playerData['player_number'] ?? 'Unknown'}'), // Display player type or 'Unknown' if type is null
          ),
          ListTile(
            title: Text(
                'player_country: ${playerData['player_country'] ?? 'N/A'}'), // Display player number or 'N/A' if number is null
          ),
          ListTile(
            title: Text(
                'player_goals: ${playerData['player_goals'] ?? 'N/A'}'), // Display player country or 'N/A' if country is null
          ),
          ListTile(
            title: Text(
                'player_yellow_cards: ${playerData['player_yellow_cards'] ?? 'N/A'}'), // Display player country or 'N/A' if country is null
          ),
          ListTile(
            title: Text(
                'player_red_cards: ${playerData['player_red_cards'] ?? 'N/A'}'), // Display player country or 'N/A' if country is null
          ),
          ListTile(
            title: Text(
                'player_assists: ${playerData['player_assists'] ?? 'N/A'}'), // Display player country or 'N/A' if country is null
          ),
          ListTile(
            title: Text(
                'player_age: ${playerData['player_age'] ?? 'N/A'}'), // Display player country or 'N/A' if country is null
          ),
          // Add more ListTiles for other player attributes as needed
        ],
      ),
    );
  }
}
