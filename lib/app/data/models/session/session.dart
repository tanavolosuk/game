import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {

  factory Session({
    required String game_state,
    required String host_name,
    required String id,
    required String name,
}) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);
}

// "game_state": "Состояние",
//     "guest_name": null,

//     "host_name": "ИДХоста",
//     "id": "ИДСессии",
//     "name": "ИмяСессии"
