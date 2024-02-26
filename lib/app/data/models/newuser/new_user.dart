import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game/app/data/models/currentuser/current_user.dart';

part 'new_user.freezed.dart';
part 'new_user.g.dart';

@freezed
class NewUser with _$NewUser {

  factory NewUser({
    required String private_key,
    required CurrentUser user,
  }) = _NewUser;

  factory NewUser.fromJson(Map<String, dynamic> json) => _$NewUserFromJson(json);
}