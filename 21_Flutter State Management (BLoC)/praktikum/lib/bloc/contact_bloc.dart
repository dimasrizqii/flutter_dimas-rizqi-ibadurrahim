// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contacts: List.empty())) {
    on<ContactEvent>((event, emit) async {
      emit(Loading(contacts: state.contacts));

      await Future.delayed(const Duration(milliseconds: 300));

      if (event is CreateContact) {
        emit(ContactLoaded(contacts: [...state.contacts, event.contacts]));
      } else if (event is DeleteContact) {
        emit(ContactLoaded(
            contacts: [...state.contacts]..remove(event.contacts)));
      } else if (event is ContactErrored) {
        emit(Error(contacts: state.contacts));
      }

      emit(ContactLoaded(contacts: state.contacts));
    });
  }
}
