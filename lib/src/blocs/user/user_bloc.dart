import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/models.dart';
import '../../services/services.dart';
import '../../utilities/utilities.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUserData>((event, emit) async {
      emit(UserIsLoading());
      String uid = await Commons().getUID();
      final result = await UserService().loadUserData(uid);
      emit(
        result.fold(
          (l) => UserIsFailed(message: l),
          (r) => UserIsSuccess(data: r),
        ),
      );
    });
    on<LogOutUser>((event, emit) async {
      UserService().logOutUser();
      await Commons().removeUID();
      emit(UserIsLogOut());
    });
    on<ChangePhoto>((event, emit) async {
      final result =
          await UserService().changeProfile((state as UserIsSuccess).data);
      emit(
        result.fold(
          (l) => UserIsFailed(message: l),
          (r) => UserIsSuccess(data: r),
        ),
      );
    });
  }
}
