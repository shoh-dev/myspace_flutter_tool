//name field
//notes field
//active switch

import 'package:flutter/material.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/actions/change_form_values_action.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/model/model.dart';
import 'package:myspace_flutter_tool/src/data/redux/ui/state_provider.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StateProvider<MyFormState>(
        selector: (state) => state.myFormState,
        builder: (context, vm, _) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  TextFormField(
                    initialValue: vm.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                    onChanged: (value) {
                      ChangeFormValuesAction(name: value).execute();
                    },
                  ),
                  TextFormField(
                    initialValue: vm.email,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    onChanged: (value) {
                      ChangeFormValuesAction(email: value).execute();
                    },
                  ),
                  Switch(
                    value: vm.isActive,
                    onChanged: (value) {
                      ChangeFormValuesAction(isActive: value).execute();
                    },
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Text('Name: ${vm.name}'),
                      Text('Email: ${vm.email}'),
                      Text('Active: ${vm.isActive}'),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
