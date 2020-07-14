import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/application/settings/settings_bloc.dart';
import 'package:power_progress/domain/settings/settings.dart';

class DarkThemeSettingsCard extends StatelessWidget {
  const DarkThemeSettingsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.style),
        title: const Text('Dark theme'),
        trailing: _Switch(),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        Widget _progress() {
          return const Switch(value: false, onChanged: null);
        }

        Widget _fetch() {
          context.bloc<SettingsBloc>().add(const SettingsEvent.fetch());
          return _progress();
        }

        Widget _render(Settings settings) {
          return Switch(
            value: settings.isThemeDark,
            onChanged: (newValue) {
              context.bloc<SettingsBloc>().add(SettingsEvent.updateTheme(isThemeDark: newValue));
            },
          );
        }

        return state.maybeWhen(
          initial: _fetch,
          themeUpdated: _render,
          fetched: _render,
          orElse: _progress,
        );
      },
    );
  }
}
