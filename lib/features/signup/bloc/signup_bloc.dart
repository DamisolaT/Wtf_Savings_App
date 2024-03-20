
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/signup/bloc/signup_state.dart';
import 'package:wtf_savings_app/features/signup/repository/signup_repository.dart';

class SignupBloc extends Cubit<SignupState>{
  SignupBloc(): super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  void reset(){
    emit(SignupState.empty);
  }

  void registerUser({
  required String fullName,
  required String emailAddress,
  required String password
  })async {
    emit(state.copyWith(signupStatus: SignupStatus.Processing));
    try {
     await signupRepository.registerUser(
         email: emailAddress,
         password: password
     );
     emit(state.copyWith(signupStatus: SignupStatus.Successful));


    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      print(e);
    }

  }
}