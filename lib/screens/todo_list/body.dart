import 'package:flutter/material.dart';
import '../../models/todo.dart';
import '../task_list/task_list_screen.dart';

class Body extends StatefulWidget {
  Body(this._todo);
  final List<Todo> _todo;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void _navigate({context, index}) async {
    //var copy;
    Todo result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskListScreen(Todo.copy(widget._todo[index])),
      ),
    );

    if (result == null) {
      /** */
    } else {
      setState(() => widget._todo[index] = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget._todo.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(widget._todo[index].title),
        subtitle: Text(widget._todo[index].subtitle),
        trailing: CircleAvatar(
          child: Text(
            widget._todo[index].items.toStringAsFixed(0),
            style: TextStyle(color: Colors.white),
          ),
        ),
        onTap: () => _navigate(
          context: context,
          index: index,
        ),
      ),
    );
  }
}
