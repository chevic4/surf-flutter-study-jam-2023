import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validators/validators.dart';

class ValidEmailCubit extends Cubit<String?> {
  ValidEmailCubit() : super(null);

  void validUrl(String value) {
    final bool result = isURL(value);
    result ? emit(null) : emit('введите правильно url');
  }
}
