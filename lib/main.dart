import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.camera_front, size: 40,)
                ],
                title: Text("Sliver Example"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.green,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            ),
            SliverFixedExtentList(
              itemExtent: 75,
              delegate: SliverChildListDelegate([
                Container(color: Colors.purple),
                Container(color: Colors.indigo),
                Container(color: Colors.blue),
                Container(color: Colors.green),
                Container(color: Colors.yellow),
                Container(color: Colors.orange),
                Container(color: Colors.red),


              ]),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 10,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 2.0,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(8.0),
                child: Text('Grid Header', style: TextStyle(fontSize: 24)),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
              children: <Widget>[
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
            SliverGrid.extent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
              children: <Widget>[
                Container(color: Colors.pink),
                Container(color: Colors.indigo),
                Container(color: Colors.orange),
                Container(color: Colors.pink),
                Container(color: Colors.indigo),
                Container(color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}