// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagePost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagePost _$ImagePostFromJson(Map<String, dynamic> json) {
  return ImagePost(
      mediaUrl: json['mediaUrl'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      likes: json['likes'],
      postId: json['postId'] as String,
      ownerId: json['ownerId'] as String);
}

Map<String, dynamic> _$ImagePostToJson(ImagePost instance) => <String, dynamic>{
      'mediaUrl': instance.mediaUrl,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'likes': instance.likes,
      'postId': instance.postId,
      'ownerId': instance.ownerId
    };
