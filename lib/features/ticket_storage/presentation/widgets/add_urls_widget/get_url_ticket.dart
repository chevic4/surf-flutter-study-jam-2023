import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/add_urls_widget/enter_data_widget.dart';

Future<TicketEntity> getUrlTicket(BuildContext context) async {
  final TicketEntity result = await (showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return const EnterTicketData();
    },
  ));
  return result;
}
