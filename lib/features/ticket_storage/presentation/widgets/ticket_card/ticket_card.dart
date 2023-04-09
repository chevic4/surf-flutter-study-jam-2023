import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/ticket_card/icon_load.dart';

import 'body_card.dart';

class TicketCard extends StatelessWidget {
  final TicketEntity dataTicket;

  const TicketCard({super.key, required this.dataTicket});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(flex: 1, child: Icon(Icons.train)),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Text(
                    dataTicket.ticketUrl,
                    softWrap: false,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 20,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  BodyCardWidget(data: dataTicket),
                ],
              ),
            ),
            Expanded(flex: 1, child: IconLoad(isLoaded: dataTicket.isLoaded)),
          ],
        ),
      ),
    );
  }
}
