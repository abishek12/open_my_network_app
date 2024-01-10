import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


import '../../sign_in/service/sign_in_helper.dart';
import '../service/register_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignInBloc extends Bloc<SignUpEvent, SignUpState> {
  SignInBloc() : super(SignUpInitial()) {
    RegisterService registerService = RegisterService();
    on<SignUpUserEvent>((event, emit) async {
      final String username = event.username;
      final String email = event.email;
      final String password = event.password;

      emit(const SignUpProgress(isLoading: true));
      final bool userStatue = await registerService.registerUser(username,email, password);
      await currentUserStatus();

      emit(const SignUpProgress(isLoading: false));
      emit(SignUpSuccess(isSuccess: userStatue));
    });

    on<SignUpUserLogout>((event, emit) async {
      await logoutUserStatus();
      emit(SignUpInitial());
    });
  }
}
