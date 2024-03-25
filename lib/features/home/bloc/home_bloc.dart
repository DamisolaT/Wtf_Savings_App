
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/account/models/UserModel.dart';
import 'package:wtf_savings_app/features/account/repository/account_repository.dart';
import 'package:wtf_savings_app/features/home/bloc/home_state.dart';

class HomeBloc extends  Cubit<HomeState>{
  HomeBloc(): super(HomeState());

  AccountRepository accountRepository = AccountRepository();

  void updateTabIndex(int newIndex)async{
    emit(state.copyWith(tabIndex: newIndex));
}
   void hideTodo()async{
    emit(state.copyWith(hideTodo: true));
   }

   void loadUserDetails()async{
    try{
      UserModel? userModel = await accountRepository.getUserDetails();
      if(userModel != null){
        emit(state.copyWith(userModel: userModel));

      }
    }catch(e){
      print(e);
    }
   }
 }