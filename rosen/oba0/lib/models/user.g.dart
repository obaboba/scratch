// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'name': instance.name,
  'avatar': instance.avatar
};
