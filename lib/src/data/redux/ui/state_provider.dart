import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/presentation/components/error_indicator.dart';

typedef Selector<T> = T Function(AppState state);
typedef ErrorBuilder<T> = Widget Function(
    BuildContext context, ResultError<T> vm);
typedef OkBuilder<T> = Widget Function(BuildContext context, ResultOk<T> vm);
typedef CustomBuilder<T> = Widget Function(BuildContext context, Result<T> vm);
typedef NormalBuilder<T> = Widget Function(
    BuildContext context, T vm, VoidCallback? retryAction);

class ResultStateProvider<T> extends StatelessWidget {
  const ResultStateProvider({
    super.key,
    required this.selector,
    this.errorBuilder,
    this.okBuilder,
    this.customBuilder,
    this.retryAction,
    this.onInitialBuild,
    this.onDispose,
    this.onDidChange,
  });

  final VoidCallback? retryAction;

  ///[errorBuilder] is called when the view model is a [ResultFailure<T>]
  ///
  ///default implementation returns null which results to [Center(child: Text(vm.failMessage))]
  final ErrorBuilder<T>? errorBuilder;

  ///[okBuilder] is called when the view model is a [ResultData<T>]
  ///
  ///default implementation returns null which results to [nil]
  final OkBuilder<T>? okBuilder;

  ///[customBuilder] is called when the view model is a [Result<T>]
  ///
  ///can make custom builders for each state manually
  final CustomBuilder<T>? customBuilder;

  ///[onInit] is called when the widget is built for the first time
  // void onInit(Result<T> vm) {}

  ///[onDispose] is called when the widget is disposed
  // void onDispose(Store<AppState> store) {}

  ///[selector] is a function that takes the current state and returns the view model as a [Result<T>]
  final Selector<Result<T>> selector;

  final OnInitialBuildCallback<Result<T>>? onInitialBuild;

  final OnDisposeCallback<AppState>? onDispose;

  final OnDidChangeCallback<Result<T>>? onDidChange;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Result<T>>(
      distinct: true,
      converter: (store) => selector(store.state),
      onInitialBuild: onInitialBuild,
      onDispose: onDispose,
      onDidChange: onDidChange,
      builder: (context, vm) {
        log("Rebuild $key, hashCode ${vm.hashCode}");

        //Custom builder
        final custom = customBuilder?.call(context, vm);
        if (custom != null) return custom;

        //Error builder
        if (vm is ResultError) {
          final error = errorBuilder?.call(context, vm as ResultError<T>);
          if (error != null) return error;
          return ErrorIndicator(
            title: "Error loading",
            label: (vm as ResultError).error.toString(),
            onPressed: retryAction,
          );
        }

        //Ok builder
        final ok = okBuilder?.call(context, vm as ResultOk<T>);
        if (ok != null) return ok;

        assert(ok != null || custom != null,
            "You must provide either an [okBuilder] or a [customBuilder]");

        return const SizedBox();
      },
    );
  }
}

class StateProvider<T> extends StatelessWidget {
  const StateProvider({
    super.key,
    required this.selector,
    required this.builder,
    this.retryAction,
    this.onInitialBuild,
    this.onDispose,
    this.onDidChange,
  });

  final VoidCallback? retryAction;

  ///[okBuilder] is called when the view model is a [ResultData<T>]
  ///
  ///default implementation returns null which results to [nil]
  final NormalBuilder<T> builder;

  ///[selector] is a function that takes the current state and returns the view model as a [Result<T>]
  final Selector<T> selector;

  final OnInitialBuildCallback<T>? onInitialBuild;

  final OnDisposeCallback<AppState>? onDispose;

  final OnDidChangeCallback<T>? onDidChange;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, T>(
      distinct: true,
      converter: (store) => selector(store.state),
      onInitialBuild: onInitialBuild,
      onDispose: onDispose,
      onDidChange: onDidChange,
      builder: (context, vm) {
        log("Rebuild $key, hashCode ${vm.hashCode}");

        return builder(context, vm, retryAction);
      },
    );
  }
}
