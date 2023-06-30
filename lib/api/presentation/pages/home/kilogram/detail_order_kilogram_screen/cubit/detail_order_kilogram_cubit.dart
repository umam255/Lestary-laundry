import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detail_order_kilogram_state.dart';

class DetailOrderKilogramCubit extends Cubit<DetailOrderKilogramState> {
  DetailOrderKilogramCubit() : super(DetailOrderKilogramInitial());
}
