
import 'package:flutter/material.dart';


class CountryGridTile extends StatelessWidget {
  final Map<String, dynamic> country;

  const CountryGridTile(this.country);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "Leagues",arguments: country['country_key'].toString());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                country['country_logo']!=null?country['country_logo']:"https://images.unsplash.com/photo-1623972202881-8ded45a5ad84?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=393&q=80",
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
      ),
    );
  }
}