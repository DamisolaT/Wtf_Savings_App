
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/account/models/UserModel.dart';
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

     await signupRepository.saveUser(
         user: UserModel(
           emailAddress: emailAddress,
           fullName: fullName,

         )
     );
     emit(state.copyWith(signupStatus: SignupStatus.Successful));


    
    } catch (e) {
      print("Go to error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      print(e);
    }

  }
}