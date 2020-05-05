import 'package:flutter/material.dart';

import 'catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nooks Helper',
      home: Scaffold(
        body: Column(
          children: <Widget>[
            _TopBar(),
            Expanded(
              child: Catalog(),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = const SizedBox(width: 30);
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 8),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ExcludeSemantics(
                      child: SizedBox(
                          height: 80
                      )
                  ),
                  spacing,
                  Text(
                      '너굴 도우미',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                ],
              ),
            ]
        )
    );
  }
}