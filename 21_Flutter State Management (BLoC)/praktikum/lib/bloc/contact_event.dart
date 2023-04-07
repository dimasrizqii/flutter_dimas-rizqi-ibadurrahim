part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  @override
  List<Object> get props => List.empty();
}

class CreateContact extends ContactEvent {
  final ContactModel contacts;

  CreateContact({required this.contacts});

  @override
  List<Object> get props => [contacts];
}

class DeleteContact extends ContactEvent {
  final ContactModel contacts;

  DeleteContact({required this.contacts});

  @override
  List<Object> get props => [contacts];
}

class LoadContact extends ContactEvent {}

class ContactErrored extends ContactEvent {}
