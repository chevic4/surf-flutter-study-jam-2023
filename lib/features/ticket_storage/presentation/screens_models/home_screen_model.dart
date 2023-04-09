import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/usecases/tickets_service.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/tickets_state.dart';
import 'package:validators/validators.dart';

class HomeScreenModelCubit extends Cubit<StateTickets> {
  HomeScreenModelCubit() : super(StateTickets(value: []));
  final _ticketService = TicketService();

  void addTicketToList(TicketEntity value) {
    if (isURL(value.ticketUrl)) {
      _ticketService.addTicket(value);
      StateTickets newState =
          StateTickets(value: _ticketService.getListTickets);
      emit(newState);
    }
  }
}
