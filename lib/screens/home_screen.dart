import 'package:artist_flutter_app/Animation/FadeAnimation.dart';
import 'package:artist_flutter_app/screens/details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.giphy.com/media/mW03sTZVT9IY0/source.gif"),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        1.6,
                        Text(
                          "POPULAR",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      FadeAnimation(
                        1.5,
                        Text(
                          "artist",
                          style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  FadeAnimation(
                    1.6,
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FadeAnimation(
                    2.0,
                    dataPage(
                        "https://cdn.pixabay.com/photo/2012/11/28/10/20/rembrandt-harmenszoon-van-rijn-67621_1280.jpg",
                        "REMBRANDT VAN",
                        "RIJN"),
                  ),
                  FadeAnimation(
                    2.1,
                    dataPage(
                        "https://cdn.pixabay.com/photo/2012/10/26/00/20/painter-62934_1280.jpg",
                        "Claude",
                        " Monet"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: FadeAnimation(
                2.2,
                Text(
                  "DISCOVER",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FadeAnimation(
                    2.3,
                    GesturePage(
                        "https://cdn.pixabay.com/photo/2016/01/19/15/01/paints-1149122_1280.jpg",
                        "Painter",
                        "38.052"),
                  ),
                  FadeAnimation(
                    2.4,
                    GesturePage(
                        "https://cdn.pixabay.com/photo/2017/09/30/00/34/microphone-2800945_1280.png",
                        "Singer",
                        " 11.556"),
                  ),
                  FadeAnimation(
                    2.5,
                    GesturePage(
                        "https://cdn.pixabay.com/photo/2017/08/06/15/00/people-2593294_1280.jpg",
                        "Dancer",
                        " 1.956"),
                  ),
                  FadeAnimation(
                    2.6,
                    GesturePage(
                        "https://cdn.pixabay.com/photo/2015/08/18/23/23/barber-895148_1280.jpg",
                        "Theater",
                        " 10.546"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Discoverbottom(String imgUrl, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 5.0),
    child: Container(
      height: 100.0,
      width: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget dataPage(String imgUrl, String title, String subtitle) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      height: 250.0,
      width: 250.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 40.0,
            left: 25.0,
            child: Container(
              height: 300.0,
              width: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 7.0),
                        color: Colors.black.withOpacity(.3))
                  ],
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 70.0,
            child: Container(
              height: 60.0,
              width: 130.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(0.0, 3.5), color: Colors.grey)
                ],
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    subtitle,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//---------------------------------------------

class GesturePage extends StatefulWidget {
  final String imgUrl;
  final String title;
  final String subtitle;

  const GesturePage(this.imgUrl, this.title, this.subtitle);

  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => DetailsPage(widget.imgUrl)));
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.9),
              ),
              height: 650.0,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60.0,
                          ),
                          FadeAnimation(
                            1.3,
                            Text(
                              widget.title,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0),
                            ),
                          ),
                          FadeAnimation(
                            1.4,
                            Text(
                              "Maria\nGerman",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 75.0,
                                width: 160.0,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10.0,
                                      left: 0.0,
                                      child: FadeAnimation(
                                          1.5,
                                          imggesture(
                                              "https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_1280.jpg")),
                                    ),
                                    Positioned(
                                      top: 10.0,
                                      left: 20.0,
                                      child: FadeAnimation(
                                          1.5,
                                          imggesture(
                                              "https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_1280.jpg")),
                                    ),
                                    Positioned(
                                      top: 10.0,
                                      left: 50.0,
                                      child: FadeAnimation(
                                          1.5,
                                          imggesture(
                                              "https://cdn.pixabay.com/photo/2016/12/19/21/36/winters-1919143_1280.jpg")),
                                    ),
                                    Positioned(
                                      top: 10.0,
                                      left: 70.0,
                                      child: FadeAnimation(
                                          1.5,
                                          imggesture(
                                              "https://cdn.pixabay.com/photo/2017/01/23/19/40/woman-2003647_1280.jpg")),
                                    ),
                                    Positioned(
                                      top: 10.0,
                                      left: 90.0,
                                      child: FadeAnimation(
                                        1.5,
                                        imggesturered(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 100.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FadeAnimation(
                                      1.5,
                                      Text(
                                        "20.3k",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35.0),
                                      ),
                                    ),
                                    FadeAnimation(
                                      1.5,
                                      Text(
                                        "Followers",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomePage(),
                                      ),
                                    );
                                  },
                                  child: FadeAnimation(
                                    1.3,
                                    Container(
                                      height: 50.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.grey),
                                      child: Center(
                                        child: Text(
                                          "Message",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomePage(),
                                      ),
                                    );
                                  },
                                  child: FadeAnimation(
                                    1.4,
                                    Container(
                                      height: 50.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.blueAccent),
                                      child: Center(
                                          child: Text(
                                        "Follow",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 5.0),
        child: Container(
          height: 100.0,
          width: 80.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(widget.imgUrl), fit: BoxFit.cover),
                ),
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              Text(
                widget.subtitle,
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget imggesture(String img) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    ),
  );
}

Widget imggesturered() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Text(
          "...",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    ),
  );
}
