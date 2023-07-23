import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    //debugPrint(data.toString());

    // get properties from data

    String datetime = data['datetime'];
    // String offset = data['utc_offset'];
    debugPrint(datetime);
    // debugPrint(offset);
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}
