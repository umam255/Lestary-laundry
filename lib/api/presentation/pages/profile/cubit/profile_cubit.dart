import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/profile/profile_data.dart';
import 'package:lestari_laundry/api/domain/repository/profile/profile_repository.dart';
import 'package:lestari_laundry/api/utility/commons.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repository;
  ProfileCubit(this.repository) : super(ProfileInitial());

  Future<void> fetchProfile() async {
    emit(ProfileIsLoading());
    final token = await Commons().getToken();
    print('TOKEN :${token}');
    if (token != null) {
      final response = await repository.fetchProfile(
        AuthenticationHeadersRequest(token),
      );

      if (response is ResultSuccess) {
        emit(ProfileIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(ProfileIsFailed(message: (response as ResultError).message));
      }
    } else {
      print('ERROR BLOC PROFILE');
      emit(ProfileIsFailed(message: 'Forbidden'));
    }
  }
}
