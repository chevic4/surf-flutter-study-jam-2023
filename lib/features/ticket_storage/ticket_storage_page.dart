import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/screens_models/home_screen_model.dart';

import 'presentation/screens/home_ticket_storage_screen.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeScreenModelCubit(),
      child: const HomeTicketsStorageScreen(),
    );
  }
}
