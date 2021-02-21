import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meet_network_image/meet_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imageWidth = 320.0;
  final imageHeight = 171.0;
  final toleranceFactor = 0.033;
  final widthFactor = 0.125;
  final heightFactor = 0.5;

  final random = Random();

  final baseUrl = "https://kowshikce.xyz/wp-content/uploads/2020/10/";

  final imagesUrls = [
    "one.jpg",
    "two-scaled.jpg",
    "six-scaled.jpg",
    "three-scaled.jpg",
    "four-scaled.jpg",
    "five.jpg",
    "eight.jpg",
    "seven.jpg",
    "nine.jpg",
    "teen-scaled.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18))),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return _Tile("$baseUrl${imagesUrls[index]}");
          },
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(2, index % 2 == 0 ? 2 : 1),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ));
  }
}

Widget _Tile(String imageUrl) {
  return Container(
      child: MeetNetworkImage(
    fit: BoxFit.cover,
    imageUrl: imageUrl,
    loadingBuilder: (ctx) => Center(
        child: SpinKitFadingCircle(
      color: Colors.green,
      size: 50.0,
    )),
    errorBuilder: (ctx, e) => Center(
        child: Text(
      "Error !",
      style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          fontSize: 28.0,
          color: Colors.green,
          letterSpacing: 1.8),
    )),
  ));

  // return Container(
  //     child: FadeInImage.memoryNetwork(
  //   placeholder: kTransparentImage,
  //   image: imageUrl,
  //   fit: BoxFit.cover,
  // ));

  // DecoratedBox(
  //   decoration: BoxDecoration(
  //     color: Colors.white,
  //   ),
  //   child: Image.network(
  //     '$imageUrl',
  //     fit: BoxFit.cover,
  //     loadingBuilder: (BuildContext context, Widget child,
  //         ImageChunkEvent loadingProgress) {
  //       if (loadingProgress == null) return child;
  //       return Center(
  //         child: CircularProgressIndicator(
  //           value: loadingProgress.expectedTotalBytes != null
  //               ? loadingProgress.cumulativeBytesLoaded /
  //                   loadingProgress.expectedTotalBytes
  //               : null,
  //         ),
  //       );
  //     },
  //   ),
  // );
}
