import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../datas/theme.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer(this.myTheme);

  final MyTheme myTheme;

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 300,
              alignment: Alignment.center,
              child: ClipOval(
                child: Image.asset('images/avatar.jpg', width: 80, height: 80, fit: BoxFit.cover,),
              ),
            ),
            Text('选择主题'),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: themeColors.map((e) => FlatButton(
                onPressed: (){
                  widget.myTheme.changeThemeColor(e);
                },
                color: e,
                minWidth: 50,
                height: 50,)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
