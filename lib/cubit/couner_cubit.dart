import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreementState());

  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamIncreement({required String team, required int buttonNumber}) {
    if (team == "A") {
      //increement points
      teamAPoint += buttonNumber;
      //output state from cubit
      emit(CounterAIncreementState());
    } else {
      //increement points
      teamBPoint += buttonNumber;
      //output state from cubit
      emit(CounterBIncreementState());
    }
  }

  void resetTeamPoints() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(CounterAIncreementState());
  }
}
