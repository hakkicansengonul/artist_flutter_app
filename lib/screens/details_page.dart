import 'package:artist_flutter_app/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String imgUrl;

  const DetailsPage(this.imgUrl);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.imgUrl), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: FadeAnimation(
                1.4,
                IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
