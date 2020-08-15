import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/presentation/theme/gradients.dart';
import 'package:power_progress/presentation/widgets/inputs/exercise_name_input.dart';
import 'package:power_progress/presentation/widgets/inputs/one_rm_input.dart';
import 'package:power_progress/presentation/widgets/utils/shadow_elevation.dart';

class ExerciseAdd extends StatefulWidget {
  @override
  _ExerciseAddState createState() => _ExerciseAddState();
}

class _ExerciseAddState extends State<ExerciseAdd> {
  TextEditingController _exerciseNameController;
  TextEditingController _oneRmController;

  @override
  void initState() {
    _exerciseNameController = TextEditingController();
    _oneRmController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: 300,
      ),
      child: Stack(
        children: [
          Container(
            height: 240,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: burningOrangeGradient,
                borderRadius: BorderRadius.circular(10),
                boxShadow: elevation3,
              ),
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ExerciseNameInput(
                    controller: _exerciseNameController,
                    color: Colors.white,
                  ),
                  const VSpacing.extraSmall(),
                  OneRmInput(
                    controller: _oneRmController,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
