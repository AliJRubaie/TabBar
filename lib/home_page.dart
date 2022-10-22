import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_Page extends StatefulWidget {
  Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  Uri facebook_URL = Uri.parse('https://www.facebook.com');
  Uri linkedIn_URL = Uri.parse('https://www.linkedin.com');
  Uri twitter_URL = Uri.parse('https://www.twitter.com');
  Uri twitch_URL = Uri.parse('https://www.twitch.tv');

  Future<void> facebook_function() async {
    if (!await launchUrl(facebook_URL)) {
      throw 'Could not launch $facebook_URL';
    }
  }

  Future<void> linkedIn_function() async {
    if (!await launchUrl(linkedIn_URL)) {
      throw 'Could not launch $linkedIn_URL';
    }
  }

  Future<void> twitter_function() async {
    if (!await launchUrl(twitter_URL)) {
      throw 'Could not launch $twitter_URL';
    }
  }

  Future<void> twitch_function() async {
    if (!await launchUrl(twitch_URL)) {
      throw 'Could not launch $twitch_URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_facebook)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_linkedin)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_twitter)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_twitch)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: TextButton(
              onPressed: facebook_function,
              child: Text(
                "VISIT OUR FACEBOOK PAGE",
                style: TextStyle(fontSize: 30),
              ),
            )),
            Center(
              child: TextButton(
                onPressed: linkedIn_function,
                child: Text("VISIT OUR LINKEDIN PAGE",
                    style: TextStyle(fontSize: 30)),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: twitter_function,
                child: Text("VISIT OUR TWITTER PAGE",
                    style: TextStyle(fontSize: 30)),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: twitch_function,
                child: Text("VISIT OUR TWITCH CHANNEL",
                    style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
