
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Like(),
  ));
}

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  int likeCount = 0;
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      if (isLiked) {
        likeCount--;
        isLiked = false;
      } else {
        likeCount++;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Like Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/cat.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ปักหมุดเกาะแมว ยอดฮิตที่ญี่ปุ่น ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.star : Icons.star_border,
                        color: isLiked ? Color.fromARGB(255, 15, 233, 48) : null,
                      ),
                      onPressed: toggleLike,
                    ),
                    Text(
                      '$likeCount',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
            subtitle: Text(
              "Aoshima Island เกาะขนาดเล็กของจังหวัดมิยาซากิ",
              style: TextStyle(
                color: Color.fromARGB(148, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 22),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.phone, color: Colors.green),
                  Text('CALL')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.map_rounded, color: Colors.green),
                  Text('ROUTE')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.share_rounded, color: Colors.green),
                  Text('SHARE')
                ],
              ),
            ],
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                'เกาะที่มีประชากรสี่ขาที่มากกว่าคน ที่นี่มีน้องแมวมากกว่า 100 ตัว'
                'ต่มีประชากรมนุษย์อยู่เพียงแค่ 15 คน ซึ่งล้วนแล้วแต่เป็นผู้ที่มีอายุระหว่าง 50-80 ปี \n',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),  
        ],
      ),
    );
  }
}
