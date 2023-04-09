import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens/ticket_data_body.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/home_screen_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/tickets_state.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/add_urls_widget/get_url_ticket.dart';

class HomeTicketsStorageScreen extends StatefulWidget {
  const HomeTicketsStorageScreen({super.key});

  @override
  State<HomeTicketsStorageScreen> createState() =>
      _HomeTicketsStorageScreenState();
}

class _HomeTicketsStorageScreenState extends State<HomeTicketsStorageScreen> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<HomeScreenModelCubit>();
    return BlocBuilder<HomeScreenModelCubit, StateTickets>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('хранение билетов'),
          ),
          body: const ShowListTickets(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              cubit.addTicketToList(await getUrlTicket(context));
            },
            label: const Text('Добавить'),
          ),
        );
      },
    );
  }
}
