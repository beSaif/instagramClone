import 'package:flutter/material.dart';
import 'package:instagramclone/API/dbAPI.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          DbAPI.readData();
        },
        child: Text("data"),
      ),
    );
  }
}
