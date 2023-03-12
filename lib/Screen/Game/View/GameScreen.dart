import 'package:flutter/material.dart';
import 'package:play_store/Screen/Game/Provider/GameProvider.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GameProvider? gameProvidertrue, gameProviderfalse;

  @override
  Widget build(BuildContext context) {
    gameProviderfalse = Provider.of<GameProvider>(context, listen: false);
    gameProvidertrue = Provider.of<GameProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),
                        Text(
                          "Search For Games",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_voice_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.people,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ads . Suggested for You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: gameProviderfalse!.GameImage1
                      .asMap()
                      .entries
                      .map(
                        (e) => GameImage1(
                          gameProviderfalse!.GameImage1[e.key],
                          gameProviderfalse!.GameName1[e.key],
                          gameProviderfalse!.GameRate1[e.key],
                          gameProviderfalse!.GameImaegs1[e.key],
                        ),
                      )
                      .toList(),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top - Rated Games",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: gameProviderfalse!.GameImage2
                      .asMap()
                      .entries
                      .map(
                        (e) => GameImage2(
                          gameProviderfalse!.GameImage2[e.key],
                          gameProviderfalse!.GameName2[e.key],
                          gameProviderfalse!.GameRate2[e.key],
                        ),
                      )
                      .toList(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top - Paid Games",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: gameProviderfalse!.GameImage2
                      .asMap()
                      .entries
                      .map(
                        (e) => GameImage3(
                      gameProviderfalse!.GameImage4[e.key],
                      gameProviderfalse!.GameName4[e.key],
                      gameProviderfalse!.GameRate4[e.key],
                    ),
                  )
                      .toList(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top - Rated Games",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: gameProviderfalse!.GameImage2
                      .asMap()
                      .entries
                      .map(
                        (e) => GameImage3(
                          gameProviderfalse!.GameImage3[e.key],
                          gameProviderfalse!.GameName3[e.key],
                          gameProviderfalse!.GameRate3[e.key],
                        ),
                      )
                      .toList(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget GameImage1(String Images, String Name, String Rate, String Images1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 190,
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "$Images1",
                  height: 130,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "$Images",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$Name",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$Rate",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget GameImage4(String Images, String Name, String Rate) {
    return Container(
      width: 100,
      height: 150,
      alignment: Alignment.center,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "$Images",
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$Name",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "$Rate",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget GameImage2(String Images, String Name, String Rate) {
    return Container(
      width: 100,
      height: 150,
      alignment: Alignment.center,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "$Images",
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$Name",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "$Rate",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget GameImage3(String Images, String Name, String Rate) {
    return Container(
      width: 100,
      height: 150,
      alignment: Alignment.center,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "$Images",
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$Name",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "$Rate",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
