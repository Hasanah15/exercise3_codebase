import 'package:flutter/material.dart';
import '../../models/todo.dart';

class Float extends StatefulWidget {
  Float(this._todo);
  final Todo _todo;

  @override
  _FloatState createState() => _FloatState();
}

class _FloatState extends State<Float> {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, widget._todo),
          label: Text('Update'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, null),
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        ),
      ],
    );
  }
}
