import 'package:flutter/material.dart';

import '../../../../../core/util/spacing.dart';
import '../../../../../shared/pp_form_field.dart';

class OnboardingInformationsPageArguments {
  final String exerciseName;

  OnboardingInformationsPageArguments({@required this.exerciseName});
}

class OnboardingInformationsPage extends StatelessWidget {
  final String exerciseName;

  const OnboardingInformationsPage({Key key, @required this.exerciseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _InformationsForm(
              exerciseName: exerciseName,
            ),
          )),
    );
  }
}

class _InformationsForm extends StatefulWidget {
  final String exerciseName;

  const _InformationsForm({Key key, @required this.exerciseName}) : super(key: key);

  @override
  _InformationsFormState createState() => _InformationsFormState();
}

class _InformationsFormState extends State<_InformationsForm> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController _oneRmController;
  TextEditingController _stepsController;
  FocusNode _stepsFocusNode;

  @override
  void initState() {
    _oneRmController = TextEditingController();
    _stepsController = TextEditingController();
    _stepsFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _oneRmController?.dispose();
    _stepsController?.dispose();
    _stepsFocusNode?.dispose();
    super.dispose();
  }

  Widget get _oneRmField => PPTextFormFieldWidget(
        controller: _oneRmController,
        labelText: '1RM',
        textInputAction: TextInputAction.next,
        prefixIcon: Icons.confirmation_number,
        onEditingComplete: () {
          _stepsFocusNode.requestFocus();
        },
      );

  Widget get _stepsField => PPTextFormFieldWidget(
        controller: _stepsController,
        labelText: 'Steps',
        prefixIcon: Icons.shutter_speed,
        focusNode: _stepsFocusNode,
      );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.exerciseName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24.0),
          ),
          const VSpacing.medium(),
          _oneRmField,
          const VSpacing.extraSmall(),
          _stepsField,
          const VSpacing.small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: () {},
                child: const Text('Continue'),
              )
            ],
          )
        ],
      ),
    );
  }
}
