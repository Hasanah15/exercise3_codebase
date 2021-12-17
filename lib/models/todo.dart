import 'task.dart';

class Todo {
  String _title;
  String _subtitle;
  List<Task> _items;

  get items => _items;
  get title => _title;
  //var progress;

  //sstatic Todo copy;
  // get count => _items.length;
  // get subtitle => 'This ist has $count task(s)';
  // double get task =>
  //     ((items.where((item) => item.completed).length / items.length) * 100)
  //         .round();

  int get progress =>
      ((items.where((item) => item.completed).length / items.length) * 100)
          .round();
// Todo({
//   this.title, this.item
// });

  Todo({title, items})
      : _title = title,
        _items = items;

  Todo.copy(Todo from)
      : this(
          title: from.title,
          // subtitle: from.subtitle,
          items: from._items.map((item) => Task.copy(item)).toList(),
        );

  // get totals => _items.length;
  // get subtitle => 'This ist has $totals task(s)';
  // double get progress {
  //   int total = 0;
  //   for (int i = 0; i < totals; i++) {
  //     if (items[i].completed) {
  //       total = total + 1;
  //     }
  //   }
  //   return (total / totals) * 100;
  // }

  //int get percentage{ return percentage;}

  // Todo({title, items})
  //     : _title = title,
  //       _items = items;
  // Todo.copy(Todo from) : this(title: from._title, items: [...from._items]);
}
