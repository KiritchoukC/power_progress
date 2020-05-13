import 'package:flutter/material.dart';

import '../../../../../../core/router/route_paths.dart';

class DummyCard extends StatelessWidget {
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
