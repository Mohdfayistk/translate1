part of 'translate1_bloc.dart';

@immutable
abstract class Translate1Event {}
class FetchTranslate extends Translate1Event {
  final String text;
  FetchTranslate({required this.text});
}
