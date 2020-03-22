import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'imagePost.g.dart';

@JsonSerializable()
class ImagePost {

  final String mediaUrl;
  final String name;
  final String location;
  final String description;
  final likes;
  final String postId;
  final String ownerId;

  const ImagePost({this.mediaUrl,
    this.name,
    this.location,
    this.description,
    this.likes,
    this.postId,
    this.ownerId});

  factory ImagePost.fromDocument(DocumentSnapshot document) {
    return ImagePost(
      name: document['name'],
      location: document['location'],
      mediaUrl: document['mediaUrl'],
      likes: document['likes'],
      description: document['description'],
      postId: document.documentID,
      ownerId: document['ownerId'],
    );
  }
  factory ImagePost.fromJson(Map<String, dynamic> json) => _$ImagePostFromJson(json);

  Map<String, dynamic> toJson() => _$ImagePostToJson(this);
}