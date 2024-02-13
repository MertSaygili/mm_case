import 'package:flutter_bloc/flutter_bloc.dart';

//* Base cubit class
//* Prevents emit after the cubit is closed

abstract class BaseCubit<T extends Object> extends Cubit<T> {
  BaseCubit(super.initialState);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
