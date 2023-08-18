
import 'package:flutter/material.dart';


class CountryGridTile extends StatelessWidget {
  final Map<String, dynamic> country;

  const CountryGridTile(this.country);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              country['country_logo'],
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Container(
              width: 50,
              child: Text(country['country_name'],maxLines: 1,)),
          ],
        ),
      ),
    );
  }
}