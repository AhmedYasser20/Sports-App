
import 'package:flutter/material.dart';


class LeaguesGridTile extends StatelessWidget {
  final Map<String, dynamic> leagues;

  const LeaguesGridTile(this.leagues);

  @override
  Widget build(BuildContext context) {
    final leagueLogo = leagues['league_logo'];
    final leagueName = leagues['league_name'];

    if (leagueLogo == null || leagueName == null) {
      return Visibility(
        visible: false,
        child: Container(),
      );
    }

    return GridTile(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            leagueLogo,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Text(leagueName),
        ],
      ),
    );
  }
}