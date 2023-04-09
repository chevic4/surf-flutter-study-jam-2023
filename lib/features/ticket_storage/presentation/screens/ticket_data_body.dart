import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/home_screen_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/tickets_state.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/emptylist.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/ticket_card/ticket_card.dart';

class ShowListTickets extends StatelessWidget {
  const ShowListTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenModelCubit, StateTickets>(
        builder: (context, count) {
      return count.value.isEmpty
          ? const EmptyListWidget()
          : const ListTicketsWidget();
    });
  }
}

class ListTicketsWidget extends StatelessWidget {
  const ListTicketsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final cubitHomeScreen = context.watch<HomeScreenModelCubit>();
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: cubitHomeScreen.state.value.length,
      itemBuilder: (BuildContext context, int index) {
        return TicketCard(
          dataTicket: cubitHomeScreen.state.value[index],
        );
      },
    );
  }
}
