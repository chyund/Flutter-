import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shang_cheng/datas/theme.dart';

import 'home_page.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'member_page.dart';
import 'drawer.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<String> itemTitles = [
    '首页',
    '分类',
    '购物车',
    '会员'
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: '首页'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: '分类'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '购物车'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '会员'),
  ];

  final List<Widget> itemsPages = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int currentIndex = 0;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = itemsPages[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitles[currentIndex]),
      ),
      drawer: MyDrawer(context.watch<MyTheme>()),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            currentIndex = index;
            currentPage = itemsPages[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}

