import 'package:flutter/material.dart';

class IconLoad extends StatelessWidget {
  const IconLoad({
    Key? key,
    required this.isLoaded,
  }) : super(key: key);
  final bool isLoaded;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.save,
      color: isLoaded
          ? Theme.of(context).colorScheme.background
          : Theme.of(context).colorScheme.primary,
    );
  }
}
