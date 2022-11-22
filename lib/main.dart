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
                      'https://media.discordapp.net/attachments/1014090221442314275/1044580378268147832/128623417_421618995688191_9173992913558736229_n.jpg?width=858&height=644',
                  postText: 'โปรเจคกลุ่ม',
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
                      'https://media.discordapp.net/attachments/897791729888002070/1044585392097218570/IMG_20220606_075449.jpg?width=526&height=644',
                  postText: 'ฝึกงาน Sitem',
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
                      'https://images-ext-1.discordapp.net/external/_GF7t0eg3zJekYDl-QTtICbeYAAAn7qMO4JlbDYL6zY/%3F_nc_cat%3D107%26ccb%3D1-7%26_nc_sid%3Dae9488%26_nc_ohc%3DX9fYFW8MQo4AX-8epHf%26_nc_ht%3Dscontent.fbkk28-1.fna%26oh%3D03_AdRC1UJFBPOMVP_Y_UIL7-uU0VyYrPD83zQdthbWCfXfAQ%26oe%3D63A41AA5/https/scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/127762167_3671511102908401_2420412686484865980_n.jpg?width=858&height=644',
                  postText: 'โปรเจคกลุ่ม ',
                ),
              );
            } else if (nam == 7) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://media.discordapp.net/attachments/897791729888002070/1044580856473333791/IMG_20211016_170739.jpg?width=858&height=644',
                  postText: 'ทำการประกอบSmartPhone ครั้งแรก.',
                ),
              );
            } else if (nam == 8) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://media.discordapp.net/attachments/1014090221442314276/1042045017843302461/image.png?width=969&height=644',
                  postText: ' ヽ(ಠ_ಠ)ノ',
                ),
              );
            } else if (nam == 9) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://media.discordapp.net/attachments/897791729888002070/1044583392303390821/IMG20210323144412.jpg?width=484&height=644',
                  postText: '',
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
