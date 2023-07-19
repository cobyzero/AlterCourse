part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class AddMessageEvent extends MessageEvent {
  const AddMessageEvent();
}
