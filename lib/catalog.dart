import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Catalog extends StatefulWidget{
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    List list = List();
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');
    list.add('1');
    list.add('2');
    list.add('3');

    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: constraint.maxHeight,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Text('SearchBox'),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: list.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Text('Image'),
                              title: Text(list[index]),
                              subtitle: Text('subTitle'),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}