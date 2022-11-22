import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';
import 'tweets.dart';

void main() {
  runApp(const MyApp());
}

int nam = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    const Tweet(
      avatar_url:
          'https://scontent.fbkk22-2.fna.fbcdn.net/v/t1.6435-9/83385781_2652560974960776_8688845774615522655_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEWu_5F3VhiuzSpQTyWYyppGL4hxl53_NYYviHGXnf81uS_MCqv_1fgNcdq_BwdNHnE72ZLZ2HpZIUcRAQPGkRp&_nc_ohc=GVe0v7Nbb0QAX-XPBEG&_nc_ht=scontent.fbkk22-2.fna&oh=00_AfAQRU_K4lmaDcuPgb4WUVefuCNw2pMjsuHVsUBWgC9kdA&oe=63A156DE',
      postText: 'Hello My name is Chanin Wimonmongkhonphon',
    ),
    const Tweet(
      avatar_url:
          'https://content.techgig.com/photo/77087595/Guide-How-to-build-career-as-a-programmer-without-college-degree.jpg',
      postText: '',
    ),
    const Tweets(
      postText: 'Hello ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk22-2.fna.fbcdn.net/v/t1.6435-9/83385781_2652560974960776_8688845774615522655_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEWu_5F3VhiuzSpQTyWYyppGL4hxl53_NYYviHGXnf81uS_MCqv_1fgNcdq_BwdNHnE72ZLZ2HpZIUcRAQPGkRp&_nc_ohc=GVe0v7Nbb0QAX-XPBEG&_nc_ht=scontent.fbkk22-2.fna&oh=00_AfAQRU_K4lmaDcuPgb4WUVefuCNw2pMjsuHVsUBWgC9kdA&oe=63A156DE'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildiconbutton(Icons.home, Colors.blue),
            buildiconbutton(Icons.search_outlined, Colors.blue),
            buildiconbutton(Icons.notifications_outlined, Colors.blue),
            buildiconbutton(Icons.email_outlined, Colors.blue),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        onPressed: () {
          setState(() {
            //tweetList.add(Tweet());
            if (nam == 0) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk22-1.fna.fbcdn.net/v/t1.6435-9/33057908_2084273215122891_700439707766489088_n.jpg?stp=dst-jpg_p180x540&_nc_cat=101&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeE9gok5MXwmNZLYzLqMr6Ny8v5y-ndtaBry_nL6d21oGmEuz4ewxn9Imy7iaTz74GeXmWCGV6mFsZtC4OwxzYjQ&_nc_ohc=k8LMSYhp3r0AX_Lh3_M&tn=ns8KRT8SDXZe0ZTm&_nc_ht=scontent.fbkk22-1.fna&oh=00_AfCUIGyb17Ltchcdwx4BMfifpnsfkVQZkAPN0JD7AbfKXw&oe=63A15B93',
                  postText: 'GOD OF WAR is the best',
                ),
              );
            } else if (nam == 1) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk29-5.fna.fbcdn.net/v/t1.6435-9/81870306_2705120179582373_8224070057748070400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeGSirWXgwwN1RN5g73KXKLmUYtZELOYQhBRi1kQs5hCEDh6oWhcK-82DNVhAh2Wz41dgRpH2VjigPJI9rtPEXyr&_nc_ohc=hgLWoae7lEcAX-yuSaH&_nc_ht=scontent.fbkk29-5.fna&oh=00_AfCNN1oqnOh2HvJW5ziWe_AYW0-KlTrP557D2Qvgs5Qg7A&oe=63A3CC27',
                  postText: 'Picture when I was young',
                ),
              );
            } else if (nam == 2) {
              tweetList.insert(
                0,
                const Tweets(
                  postText: 'I am currently studying in Bangkok University.',
                ),
              );
            } else if (nam == 3) {
              tweetList.insert(
                0,
                const Tweets(
                  postText: 'I am a late sleeper Because I play games',
                ),
              );
            } else if (nam == 4) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk29-4.fna.fbcdn.net/v/t1.6435-9/84457499_2535318563351685_80082663121092608_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHBw-kYzICRv3umuwBbDBzu__ddHmlPDvv_910eaU8O-xrSteHHEfAluZRNbkVGcEG7wgDj_5aYhwkKVPB5ylAu&_nc_ohc=lryevdG95JIAX_cDRfc&_nc_ht=scontent.fbkk29-4.fna&oh=00_AfD0DP5MBMt7jEqiuM8g4ZljMjg8u3w1eHz-IIESlTiTPg&oe=63A3EBEA',
                  postText: '',
                ),
              );
            } else if (nam == 5) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk29-1.fna.fbcdn.net/v/t1.6435-9/83726087_2532232703660271_2506929731585179648_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEDj6rhz8SQaAsPaMbT8ForVe6N4s_DBZJV7o3iz8MFknWUZATkQ2z7s_d0yMk0shIzoP-LjBkQOF0u2jmDZecr&_nc_ohc=lz1d42cDZzsAX_eGYuo&_nc_ht=scontent.fbkk29-1.fna&oh=00_AfCrbdsnVQZEmJIaeuuE_eOpy97cP6oMbIkHXUI6INMbNw&oe=63A3DC67',
                  postText: '',
                ),
              );
            } else if (nam == 6) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://pbs.twimg.com/media/EkHl9odVkAEyEVC.jpg:large',
                  postText: 'HONKAI IMPACT 3 ',
                ),
              );
            } else if (nam == 7) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://cdn.akamai.steamstatic.com/steam/apps/1332010/capsule_616x353.jpg?t=1660855681',
                  postText: 'The cat is Kawai.',
                ),
              );
            } else if (nam == 8) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk29-5.fna.fbcdn.net/v/t1.6435-9/81645714_813921645780144_4011860755702874112_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeF0DP_fO6CCtRhoxaO3_hmw4gThBipmiDDiBOEGKmaIMIilLaO5aTZBzZzpXW72DQUnY3t6aqBQAjr0Rz18oqzm&_nc_ohc=0zXeWrT243QAX__61IO&_nc_ht=scontent.fbkk29-5.fna&oh=00_AfAqD2D6OW0gXZwRuBAvqZgyIZw3reQRf-zJ2PhgkSrKZA&oe=63A40FDD',
                  postText: 'รู้สึกโกรธ ヽ(ಠ_ಠ)ノ',
                ),
              );
            } else if (nam == 9) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk29-4.fna.fbcdn.net/v/t39.30808-6/265005082_3050122438537959_1904475914051205290_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGCOiLeeWy8_gvT2BovDSvZTKU72lsgMyNMpTvaWyAzI5gQQ6nMxtXUMVDBfJ3a0O8AvPM1eqZH7foJJ-5NQ6DD&_nc_ohc=q68HBfYVdJ0AX-FuHyD&_nc_ht=scontent.fbkk29-4.fna&oh=00_AfC6EfK0prUvfn90qF3vc-0WtRg93Bb1YtC0qLzo3pW6bA&oe=63814796',
                  postText: 'กินข้าวกันเถอะ',
                ),
              );
            } else if (nam == 10) {
              tweetList.insert(
                0,
                const Tweets(
                  postText: 'feel very happy full score episode',
                ),
              );
            } else {
              nam = -1;
            }
            nam++;
          });
        },
      ),
    );
  }

  int get newMethod => 1;

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetList[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetList.length),
    );
  }

  Widget buildiconbutton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
