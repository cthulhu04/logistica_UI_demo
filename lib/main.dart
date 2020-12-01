import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> urlImg = [
  'https://cdn.pixabay.com/photo/2020/11/26/11/48/cat-5778777_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/04/11/19/47/clouds-over-the-mountains-5031782_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/04/18/01/fisherman-4601744_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/18/08/21/bonsai-4634225_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/11/24/10/37/osaka-5772121_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/04/11/19/47/clouds-over-the-mountains-5031782_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/04/18/01/fisherman-4601744_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/18/08/21/bonsai-4634225_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/11/26/11/48/cat-5778777_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/04/11/19/47/clouds-over-the-mountains-5031782_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/04/18/01/fisherman-4601744_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/11/18/08/21/bonsai-4634225_960_720.jpg',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff046327),
          leading: ListTile(
            title: Icon(Icons.menu),
          ),
          title: Text('Logistica'),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10.0),
          ],
        ),
        body: ImageContainer(),
      ),
    );
  }
}

class ImageContainer extends StatefulWidget {
  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'All Around the World',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Text('380 orders in qua'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1,
                  child: Row(
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.info, color: Colors.white),
                            SizedBox(width: 7.0),
                            Text(
                              'Shiping',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        color: Color(0xff046327),
                      ),
                      SizedBox(width: 10.0),
                      RaisedButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info, color: Colors.white),
                            SizedBox(width: 7.0),
                            Text(
                              'Shiping',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        color: Color(0xfff89429),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  height: MediaQuery.of(context).size.width / 1,
                  child: Expanded(
                    child: GridView.builder(
                      itemCount: urlImg.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          child: Image.network(
                            urlImg[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
