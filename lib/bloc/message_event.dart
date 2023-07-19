part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class AddMessageEvent extends MessageEvent {
  final String message;
  const AddMessageEvent(this.message);

  @override
  List<Object> get props => [message];
}
