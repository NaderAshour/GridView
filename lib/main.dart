import 'package:flutter/material.dart';

void main() {
  runApp(const GRIDVIEW());
}
class GRIDVIEW extends StatelessWidget {
  const GRIDVIEW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<AssetImage> images = [
      AssetImage('lib/assets/images/img1.jpg'),
      AssetImage('lib/assets/images/img2.jpg'),
      AssetImage('lib/assets/images/img3.jpg'),
      AssetImage('lib/assets/images/img1.jpg'),
      AssetImage('lib/assets/images/img2.jpg'),
      AssetImage('lib/assets/images/img3.jpg'),
      AssetImage('lib/assets/images/img1.jpg'),
      AssetImage('lib/assets/images/img2.jpg'),
      AssetImage('lib/assets/images/img3.jpg'),
      AssetImage('lib/assets/images/img3.jpg'),
    ];
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Gallery',style:
            TextStyle(fontFamily: 'Raleway Medium',fontSize: 30),)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              physics: BouncingScrollPhysics(),
              children:
              List.generate(10, (index) {
                return Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: images[index],
                        fit: BoxFit.cover
                    ),
                  ),
                );
              },
              ),
            ),
          ),
        ),
      );
  }
}