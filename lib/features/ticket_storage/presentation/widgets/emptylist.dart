import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          'Здесь пока ничего нет',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
