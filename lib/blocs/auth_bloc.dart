import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shape_platform/blocs/auth_events.dart';
import 'package:shape_platform/blocs/auth_state.dart';
import 'package:shape_platform/repository/auth_repo.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthRepo repo;
  AuthBloc(super.initialState, this.repo);

  @override
  Stream<AuthState> mapEventToState(AuthEvents event) async* {
    if (event is StartEvent) {
      yield LoginInitState();
    } else if (event is LoginBtnPressed) {
      yield LoginLoadingState();
      var data = await repo.login(event.email, event.password);
    }
  }
}
