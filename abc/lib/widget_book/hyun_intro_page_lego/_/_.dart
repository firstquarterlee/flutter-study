import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text("이상현").fontSize(30).fontWeight(FontWeight.w700),
            SizedBox(height: 20),
            Text("노원에 살고있는 플러터와 러닝을 좋아합니다.").fontWeight(FontWeight.w700).fontSize(15),
            SizedBox(height: 60),
            Row(
              children: [
                Icon(Icons.favorite_border,size: 30),
                SizedBox(width: 20),
                Text("좋아하는 음료는 '카페모카' 입니다."),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.movie_creation_outlined,size: 30),
                SizedBox(width: 20),
                Text("좋아하는 영화는 '인사이드아웃2' 입니다."),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.music_note,size: 30),
                SizedBox(width: 20),
                Text("좋아하는 음악은 '로파이' 음악입니다."),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.location_on,size: 30),
                SizedBox(width: 20),
                Text("좋아하는 여행지는 '강릉' 입니다."),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.bookmark_border,size: 30),
                SizedBox(width: 20),
                Image.asset('assets/lego/hyun_intro_page_lego/insideoutpic.jpeg',height: 300,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
