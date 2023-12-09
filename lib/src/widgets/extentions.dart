import 'package:flutter/material.dart';

extension OnPressed on Widget {
  Widget ripple(Function()? onPressed, {BorderRadiusGeometry borderRadius = const BorderRadius.all(Radius.circular(5))}) {
    return Material( // Ganti dengan Material
      child: Ink(
        child: InkWell(
          onTap: () {
            if (onPressed != null) {
              onPressed();
            }
          },
          borderRadius: borderRadius as BorderRadius,
          child: this,
        ),
      ),
    );
  }
}
