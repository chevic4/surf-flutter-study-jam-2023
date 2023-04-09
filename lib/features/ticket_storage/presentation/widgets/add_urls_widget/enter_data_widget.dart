import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/add_urls_widget/valid_data_controller/cubit_controller_email.dart';

class EnterTicketData extends StatefulWidget {
  const EnterTicketData({super.key});

  @override
  State<EnterTicketData> createState() => _EnterTicketDataState();
}

final TextEditingController controller = TextEditingController();

class _EnterTicketDataState extends State<EnterTicketData> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ValidEmailCubit(),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BlocBuilder<ValidEmailCubit, String?>(
              builder: (context, state) {
                return TextField(
                  onChanged: (value) {
                    context.read<ValidEmailCubit>().validUrl(value);
                  },
                  controller: controller,
                  textInputAction: TextInputAction.done,
                  textDirection: TextDirection.ltr,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'введите url',
                    hintText: 'введите url',
                    errorText: state,
                  ),
                );
              },
            ),
          ),
          FilledButton.tonal(
            child: const Text('Добавить'),
            onPressed: () {
              final cache = TicketEntity(
                  isLoaded: false, ticketFile: '', ticketUrl: controller.text);
              Navigator.pop(context, cache);
            },
          ),
        ],
      ),
    );
  }
}
