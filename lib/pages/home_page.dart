import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  final List<String> images = [
    'images/banner1.jpg',
    'images/banner2.jpg',
    'images/banner3.jpg',
    'images/banner4.jpg',
    'images/banner5.jpg',
  ];

  final List<Map<String, String>> categorys = [
    {'image': 'images/category_icons/cangku.png', 'title': '仓库'},
    {'image': 'images/category_icons/jiaohuoshijian.png', 'title': '交货时间'},
    {'image': 'images/category_icons/baoxian.png', 'title': '保险'},
    {'image': 'images/category_icons/cuxiao.png', 'title': '促销'},
    {'image': 'images/category_icons/cangku.png', 'title': '仓库'},
    {'image': 'images/category_icons/jiaohuoshijian.png', 'title': '交货时间'},
    {'image': 'images/category_icons/baoxian.png', 'title': '保险'},
    {'image': 'images/category_icons/cuxiao.png', 'title': '促销'},
    {'image': 'images/category_icons/cangku.png', 'title': '仓库'},
    {'image': 'images/category_icons/jiaohuoshijian.png', 'title': '交货时间'},
    {'image': 'images/category_icons/baoxian.png', 'title': '保险'},
    {'image': 'images/category_icons/cuxiao.png', 'title': '促销'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) => Image.asset(images[index], fit: BoxFit.fill,),
              itemCount: images.length,
              pagination: SwiperPagination(),
              control: SwiperControl(),
              autoplay: true,
              duration: 500,
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.horizontal,
            children: categorys.map(getItem).toList(),
          )
        ],
      ),
    );
  }

  Widget getItem(Map<String, String> item) {
    return Column(
        children: [
          Image.asset(item['image'], width: 40, height: 40),
          Text(item['title'])
        ]
    );
  }
}