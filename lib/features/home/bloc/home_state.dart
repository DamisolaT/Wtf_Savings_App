import 'package:equatable/equatable.dart';

class HomeState extends Equatable{
  HomeState({
     this.tabIndex = 0,
     this.hideTodo = false
});
  final int tabIndex;
  final bool hideTodo;

  //HomeState copyWith({
  //  unt
//})


  @override
  // TODO: implement props
  List<Object?> get props => [];
}