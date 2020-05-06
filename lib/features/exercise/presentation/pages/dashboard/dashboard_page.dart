import 'package:flutter/material.dart';

import '../../../../../core/router/route_paths.dart';
import '../../widgets/pp_appbar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(),
      appBar: PPAppBar(
        titleLabel: 'Dashboard',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _ExerciseCard(),
          _DummyCard(),
        ],
      ),
    );
  }
}

class _DummyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      elevation: 0,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
        },
        child: Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.grey,
              ),
              Text(
                'Add new',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExerciseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Chest press',
                      style: Theme.of(context).textTheme.headline6.apply(
                            color: Colors.grey.shade700,
                          ),
                    ),
                    Text(
                      '100 Kg',
                      style: Theme.of(context).textTheme.subtitle1.apply(
                            color: Colors.black54,
                          ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).accentColor,
                        ),
                        Text(
                          'Accumulation',
                          style: Theme.of(context).textTheme.bodyText1.apply(
                                color: Theme.of(context).accentColor,
                              ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(children: [
                  Text(
                    'Month 1',
                    style: Theme.of(context).textTheme.subtitle2.apply(
                          color: Colors.black54,
                        ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
