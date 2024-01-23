import 'package:flutter/material.dart';
import 'package:spotlight_ant/src/spotlight_ant.dart';

typedef ActionBuilder = Widget Function(void Function() action);

class SpotlightActionConfig {
  /// Ordering actions by [SpotlightAntAction].
  ///
  /// send empty list for disabling default actions.
  final List<SpotlightAntAction> enabled;

  /// Build the actions wrapper.
  ///
  /// Default using:
  /// ```dart
  /// Positioned(
  ///   bottom: 16,
  ///   left: 16,
  ///   right: 16,
  ///   child: Row(
  ///     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  ///     children: [prev, next, skip],
  ///   ),
  /// );
  /// ```
  final Widget Function(BuildContext context, Iterable<Widget> actions)? builder;

  /// Pressed the action widget will go to next spotlight.
  final ActionBuilder? next;

  /// Pressed the action widget will go to previous spotlight.
  final ActionBuilder? prev;

  /// Pressed the action widget will skip all spotlights.
  final ActionBuilder? skip;

  const SpotlightActionConfig({
    this.enabled = const [SpotlightAntAction.skip],
    this.builder,
    this.next,
    this.prev,
    this.skip,
  });
}
