part of 'translate1_bloc.dart';

@immutable
abstract class Translate1State {}

class Translate1Initial extends Translate1State {}
class Translate1Loading extends Translate1State {}
class Translate1Loaded extends Translate1State {}
class Translate1Error extends Translate1State{}