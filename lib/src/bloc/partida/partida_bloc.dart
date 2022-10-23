import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'partida_event.dart';
part 'partida_state.dart';

class PartidaBloc extends Bloc<PartidaEvent, PartidaState> {
  PartidaBloc() : super(PartidaInitial()) {
    on<PartidaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
