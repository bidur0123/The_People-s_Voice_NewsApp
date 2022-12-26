import 'package:flutter/material.dart';
import 'package:the_peoples_voice/view/detail_view.dart';
import 'package:the_peoples_voice/view/home.dart';
import 'package:the_peoples_voice/view/notification.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The People's Voice"),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Noti()));
              },
              icon: Icon(Icons.notifications),
              label:Text(""),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            DrawerHeader (
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color:Colors.indigoAccent,
                ),
                accountName: Text(
                  "Bidur Gupta",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  "bidurgupta125@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.white,
                  ),
                ),
                currentAccountPictureSize: Size.square(70),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    "BG",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Mulish',
                      color: Colors.white,
                    ),
                  ), //Text
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.my_library_books_rounded),
              title: Text(' FAQs'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(' About Us'),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text(' Contact Us '),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(45.0, 300.0, 40.0, 20.0),
                child: Text (
                  'Made By Bidur Gupta..',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Mulish',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body:SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitHeight,
                  placeholder: "assets/img/placeholder.jfif",
                  image: imgUrl
              ),
              Container (
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        newsHead.length > 90
                            ? "${newsHead.substring(0, 90)}..."
                            : newsHead,
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        newsDes,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Text (
                                newsCnt != "--"
                                    ? newsCnt.length > 250
                                    ? newsCnt.substring(0, 250)
                                    : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                                    : newsCnt,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => DetailViewScreen(newsUrl: newsUrl)));
                        },
                        child: Text("Read More")),
                  ),
                ],
              ),
              // Center(
              //     child: TextButton(
              //         onPressed: () async {
              //           await launchUrl(Uri.parse("https://newsapi.org/"));
              //         },
              //         child: Text(
              //           "News Provided By NewsAPI.org",
              //           style: TextStyle(fontSize: 12),
              //           textAlign: TextAlign.center,
              //         ))),
               SizedBox(
                 height: 20,
               ),
            ],
          ),
        ),
      ),
    );
  }
}
