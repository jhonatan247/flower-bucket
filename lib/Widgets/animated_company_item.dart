import 'package:flower_bucket/Widgets/normal_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AnimatedCompanyItem extends StatelessWidget {
  const AnimatedCompanyItem(
      {Key key,
      @required this.animation,
      this.onTap,
      @required this.item,
      this.selected: false})
      : assert(animation != null),
        assert(item != null),
        assert(selected != null),
        super(key: key);

  final Animation<double> animation;
  final Function onTap;
  final String item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        key: Key(item),
        dismissal: SlidableDismissal(
          child: SlidableDrawerDismissal(),
          onWillDismiss: (actionType) {
            return showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Delete Driver'),
                  content: Text('Do you want to delete this Driver?'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('No'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text('Yes'),
                      onPressed: () {
                        Navigator.of(context).pop();
                        onTap();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {
              return showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Delete Driver'),
                    content: Text('Do you want to delete this Driver?'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('Yes'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          onTap();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SizeTransition(
            axis: Axis.vertical,
            sizeFactor: animation,
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: NormalText(
                      item,
                      weight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
