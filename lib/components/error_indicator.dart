// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    super.key,
    required this.title,
    required this.label,
    this.onPressed,
  });

  final String title;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutComponent.column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: [
        TextComponent.any(title),
        TextComponent.any(label),
        if (onPressed != null)
          ButtonComponent.primary(text: 'Retry', onPressed: onPressed),
      ],
    );
  }
}
