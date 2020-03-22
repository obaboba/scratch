import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

// run flutter pub run build_runner build
// to create the user.g.dart file

@JsonSerializable()
class User {

  final String email;
  final String uid;
  final String avatar;
  final String name;
  final String displayName;
  final String bio;
  final Map followers;
  final Map following;

  const User({this.name,
    this.uid,
    this.avatar,
    this.email,
    this.displayName,
    this.bio,
    this.followers,
    this.following});

  factory User.fromDocument(DocumentSnapshot document) {
    return User(
      email: document['email'],
      name: document['name'],
      avatar: document['avatar'],
      uid: document.documentID,
      displayName: document['displayName'],
      bio: document['bio'],
      followers: document['followers'],
      following: document['following'],
    );
  }


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
