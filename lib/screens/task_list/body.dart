import 'package:flutter/material.dart';
import '../../models/todo.dart';
import '../../models/task.dart';

class Body extends StatefulWidget {
  Body(this._todo);
  final Todo _todo;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: deprecated_member_use
  var change = new List(10);
  bool signal = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget._todo.items.length,
        separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
            ),
        itemBuilder: (context, index) => ListTile(
            title: widget._todo.items[index].completed == true
                ? Text(widget._todo.items[index].title,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                    ))
                : Text(widget._todo.items[index].title),
            onTap: () => setState(() {
                  widget._todo.items[index] = Task(
                      title: widget._todo.items[index].title,
                      completed: !widget._todo.items[index].completed);
                  change[index] = true;
                  signal = true;
                }),
            onLongPress: () => setState(() {
                  widget._todo.items.removeAt(index);
                })));
  }
}
