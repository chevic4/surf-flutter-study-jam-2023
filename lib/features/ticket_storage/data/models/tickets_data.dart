import 'dart:convert';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entity/ticket_entity.dart';

class TicketData extends TicketEntity {
  TicketData(
      {required super.ticketUrl,
      required super.isLoaded,
      required super.ticketFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticketUrl': ticketUrl,
      'isLoaded': isLoaded,
      'ticketFile': ticketFile,
    };
  }

  factory TicketData.fromMap(Map<String, dynamic> map) {
    return TicketData(
      ticketUrl: map['ticketUrl'] as String,
      isLoaded: map['isLoaded'] as bool,
      ticketFile: map['ticketFile'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketData.fromJson(String source) =>
      TicketData.fromMap(json.decode(source) as Map<String, dynamic>);
}
