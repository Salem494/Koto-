import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SwiperWidget extends StatefulWidget {
  @override
  SwiperWidgetState createState() => SwiperWidgetState();
}

class SwiperWidgetState extends State<SwiperWidget> {
  //
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];


  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

//
//  goToPrevious() {
//    carouselSlider.previousPage(
//        duration: const Duration(milliseconds: 300), curve: Curves.ease);
//  }
//
//  goToNext() {
//    carouselSlider.nextPage(
//        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
//  }

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: false,
        reverse: false,
        enableInfiniteScroll: true,
//        autoPlayInterval: Duration(seconds: 2),
//        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        scrollDirection: Axis.vertical,
      ),
      items: imgList.map((imgUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Image.network(
                imgUrl,
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}