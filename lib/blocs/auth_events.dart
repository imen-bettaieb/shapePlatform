import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AuthEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartEvent extends AuthEvents {}

class LoginBtnPressed extends AuthEvents {
  final String email;
  final String password;

  LoginBtnPressed({required this.email, required this.password});
}
