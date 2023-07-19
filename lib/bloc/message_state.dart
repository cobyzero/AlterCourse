part of 'message_bloc.dart';

abstract class MessageState extends Equatable {
  const MessageState(this.message);

  final String message;
  @override
  List<Object> get props => [];
}

class MessageInitial extends MessageState {
  const MessageInitial(super.message);
}
