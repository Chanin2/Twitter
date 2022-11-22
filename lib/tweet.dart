import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Tweet extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String avatar_url;
  final String postText;
  // ignore: non_constant_identifier_names
  const Tweet({super.key, required this.avatar_url, required this.postText});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          tweetImage(postText),
          tweetButton(),
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(text);
  }

  Widget tweetImage(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(
          height: 10.0,
        ),
        Image(
          width: 400.0,
          image: NetworkImage(avatar_url),
        ),
      ],
    );
  }

  Widget tweetButton() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweeticonButton(FontAwesomeIcons.message, "22k"),
          tweeticonButton(FontAwesomeIcons.retweet, ""),
          tweeticonButton(FontAwesomeIcons.heart, "345"),
          tweeticonButton(FontAwesomeIcons.share, ""),
        ],
      ),
    );
  }

  Widget tweeticonButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: const Text(
            "Chanin Engineering",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          "@BUEN ",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          DateFormat('- KK:mm a').format(DateTime.now()),
          style: const TextStyle(color: Colors.blueGrey),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.anglesDown,
              size: 12.0, color: Colors.grey),
        ),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar_url),
          ),
        ],
      ),
    );
  }
}
