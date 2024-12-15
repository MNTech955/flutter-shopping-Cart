import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  const LoadingWidget({super.key, this.size=36.5});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: Platform.isIOS
        ?CupertinoActivityIndicator()
        :CircularProgressIndicator(
          strokeWidth: 2.0,
          color: Colors.blue,
        )
      ),
    );
  }
}