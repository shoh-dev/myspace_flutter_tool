import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_page.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_page_vm.dart';
import 'package:myspace_ui/myspace_ui.dart';

class DependencyLayout extends StatelessWidget {
  static final layout = UILayout(
    layoutBuilder: (context, state, shell) => DependencyLayout(shell: shell),
    pages: [
      [
        UIPage(
          name: 'dependency',
          path: '/dependency',
          vm: (context) => DependencyPageVm(context.readDependency()),
          builder: (context, state, vm) =>
              DependencyPage(vm: vm as DependencyPageVm),
        ),
      ],
    ],
  );
  const DependencyLayout({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MySpace Dependency Manager'),
      ),
      body: shell,
    );
  }
}
