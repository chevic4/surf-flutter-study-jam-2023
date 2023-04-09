import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';

class TicketService {
  List<TicketEntity> listTickets = [];

  List<TicketEntity> get getListTickets => listTickets;

  void addTicket(TicketEntity value) {
    listTickets.add(value);
  }

  void deleteTicket(int index) {
    listTickets.removeAt(index);
  }
}
