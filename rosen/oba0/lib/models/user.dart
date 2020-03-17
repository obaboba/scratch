import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

// run flutter pub run build_runner build
// to create the user.g.dart file

@JsonSerializable()
class User {

  final String uid;
  final String email;
  final String name;
  final String avatar;

  User({ this.uid , this.email, this.name, this.avatar});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}