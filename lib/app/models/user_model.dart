import 'package:equatable/equatable.dart';

//* User model

class UserModel extends Equatable {
  final int id;
  final String? username;

  const UserModel({required this.username, required this.id});

  UserModel copyWith({
    int? id,
    String? username,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
    );
  }

  @override
  List<Object?> get props => [
        id,
        username,
      ];
}
