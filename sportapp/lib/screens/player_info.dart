import 'package:flutter/material.dart';

class PlayerInfoScreen extends StatefulWidget {
  const PlayerInfoScreen({super.key});

  @override
  State<PlayerInfoScreen> createState() => _PlayerInfoScreenState();
}

class _PlayerInfoScreenState extends State<PlayerInfoScreen> {
  @override
  Widget build(BuildContext context) {
     var PlayerData=ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body:Text(PlayerData.toString()) ,
    );
  }
}