// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      name: json['name'] as String,
      uid: json['uid'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      bio: json['bio'] as String,
      followers: json['followers'] as Map<String, dynamic>,
      following: json['following'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'avatar': instance.avatar,
      'name': instance.name,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following
    };
