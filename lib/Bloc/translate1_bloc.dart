import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled14/Repository/modelclass/translate1.dart';

import '../Repository/api/api.dart';
import '../Repository/api/api_client.dart';

part 'translate1_event.dart';
part 'translate1_state.dart';

class Translate1Bloc extends Bloc<Translate1Event, Translate1State> {
  late Translate1 animeModel;
  AnimeApi animeApi=AnimeApi();
  Translate1Bloc() : super(Translate1Initial()) {
    on<FetchTranslate>((event, emit) async{
      emit(Translate1Loading());
      try{

        animeModel = await animeApi.getAnime(event.text);
        emit(Translate1Loaded());
      } catch(e){
        print(e);
        emit(Translate1Error());}
    });
  }
}
