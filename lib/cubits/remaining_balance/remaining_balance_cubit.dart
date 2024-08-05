import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/my_remaining_balance.dart';

part 'remaining_balance_state.dart';

class RemainingBalanceCubit extends Cubit<RemainingBalanceState> {
  RemainingBalanceCubit() : super(RemainingBalanceInitial());

  List<MyRemainingBalance> myRemainingBalance = const [
    MyRemainingBalance(id: 1, title: 'Annual Vacation', totalDay: 30),
    MyRemainingBalance(id: 2, title: 'Annual Vacation', totalDay: 30),
    MyRemainingBalance(id: 3, title: 'Annual Vacation', totalDay: 30),
    MyRemainingBalance(id: 4, title: 'Annual Vacation', totalDay: 30),
  ];
}
