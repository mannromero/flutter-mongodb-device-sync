part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started() = _Started;
   const factory TodoEvent.test() = _Test;
}