import 'package:flutter/material.dart';

import 'category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  //const CategoriesScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      // ignore: unnecessary_cast
      body: GridView(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.vertical,
          children: DUMMY_CATEGORIES.map((data) {
            CategoryItem(data.title, data.color);
          }).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1.5,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            maxCrossAxisExtent: 200,
          )) as Widget,
    );
  }
}
