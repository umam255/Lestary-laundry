import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/domain/model/data/login/login_data.dart';
import 'package:lestari_laundry/api/domain/model/request/login/login_request.dart';
import 'package:lestari_laundry/api/domain/repository/login/login_repository.dart';
import 'package:lestari_laundry/api/utility/commons.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository repository;

  LoginCubit(this.repository) : super(LoginInitial());

  Future<void> btnlogin(LoginRequest request) async {
    emit(LoginLoading());
    final response = await repository.submitLogin(request);

    if (response is ResultSuccess) {
      emit(
        LoginIsSucces(data: (response as ResultSuccess).data),
      );
      final data = (state as LoginIsSucces).data;
      Commons().setToken(data.jwt);
    } else {
      emit(LoginIsError(message: (response as ResultError).message));
    }
  }
}
