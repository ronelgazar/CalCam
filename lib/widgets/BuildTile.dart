import 'package:calcam/Utils/Constants.dart';
import 'package:flutter/material.dart';

Widget buildTile(Widget child, {Function() onTap}) {
    return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: BuildTileConstants.BUILD_TILE_SHADOW_COLOR,
      child: InkWell
      (
        // Do onTap() if it isn't null, otherwise do print()
        onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
        child: child
      )
    );
  }