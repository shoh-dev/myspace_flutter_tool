import 'package:flutter/material.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/features/dependency/components/dependency_body.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_page_vm.dart';
import 'package:myspace_ui/myspace_ui.dart';

class DependencyPage extends StatelessWidget {
  const DependencyPage({super.key, required this.vm});

  final DependencyPageVm vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm.loadYaml,
      builder: (context, child) {
        if (vm.loadYaml.isRunning) {
          return const Center(child: CircularProgressIndicator());
        }

        final result = vm.loadYaml.result!;
        return switch (result) {
          ResultError<void>() => ErrorDialog(
              content: result.e.toString(),
              actionText: "Retry",
              actionCallback: vm.loadYaml.execute,
            ),
          ResultOk<void>() => child!,
        };
      },
      child: DependencyBody(vm: vm),
    );
    //page vm requires dependency
  }
}
