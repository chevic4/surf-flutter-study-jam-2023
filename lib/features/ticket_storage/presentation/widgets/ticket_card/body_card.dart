import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';

class BodyCardWidget extends StatelessWidget {
  const BodyCardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final TicketEntity data;

  @override
  Widget build(BuildContext context) {
    return data.isLoaded
        ? const Text('объект загружен, перейти?')
        : const Text('ожидает начала загрузки');
  }
}

class StatusBodyCardInfoWidget extends StatelessWidget {
  const StatusBodyCardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('ожидает начала загрузки'),
        LinearProgressIndicator(
          backgroundColor: Colors.deepPurple,
          minHeight: 1,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
      ],
    );
  }
}
