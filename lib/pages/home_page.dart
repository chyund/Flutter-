import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    {'image': 'images/category_icons/dingdan.png', 'title': '订单'},
    {'image': 'images/category_icons/fukuan.png', 'title': '付款'},
    {'image': 'images/category_icons/kuaidiyuan.png', 'title': '快递员'},
    {'image': 'images/category_icons/quqian.png', 'title': '取钱'},
    {'image': 'images/category_icons/songhuo.png', 'title': '送货'},
    {'image': 'images/category_icons/tuihuo.png', 'title': '退货'},
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
          Container(
            color: Colors.grey[50],
            height: 165,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 15
              ),
              scrollDirection: Axis.horizontal,
              children: categorys.map(getItem).toList(),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 5),
            child: Text('相关推荐', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 14),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset('images/kaola.jpg', width: 120, height: 150, fit: BoxFit.cover,),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset('images/lu.jpg', width: 120, height: 150, fit: BoxFit.cover,),
                ),),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset('images/tigger.jpg', width: 120, height: 150, fit: BoxFit.cover,),
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getItem(Map<String, String> item) {
    return Column(
        children: [
          Image.asset(item['image'], width: 50, height: 50),
          Text(item['title'])
        ]
    );
  }
}
