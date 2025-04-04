import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_layout.dart';
import 'package:myspace_ui/myspace_ui.dart';
import 'package:repositories/yaml/yaml.dart';

class AppStore extends CoreAppStore {}

void main() {
  root(AppStore store) {
    return UIRoot(
      initialLocation: '/dependency',
      layouts: [
        DependencyLayout.layout,
      ],
    );
  }

  final config = CoreAppConfig<AppStore>(
    appStore: AppStore(),
    root: root,
    dependencies: [
      Provider<YamlRepo>(create: (context) => YamlRepoImpl() as YamlRepo),
    ],
  );

  runMySpaceApp<AppStore>(config);

  // final appStore = AppStore<AppState>(
  //   initialState: AppState.initial(),
  //   reducer: ReduxAppReducer(),
  // );

  // appStore.register<YamlRepo>(YamlRepoLocal());

  // runApp(App(
  //   appStore: appStore.createStore(),
  // ));
}
