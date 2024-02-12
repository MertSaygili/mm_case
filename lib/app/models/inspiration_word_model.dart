import 'package:equatable/equatable.dart';

class InspirationWordModel extends Equatable {
  final int? id;
  final String? message;
  final bool? isFavorite;

  const InspirationWordModel({
    required this.id,
    required this.message,
    required this.isFavorite,
  });

  InspirationWordModel copyWith({
    int? id,
    String? message,
    bool? isFavorite,
  }) {
    return InspirationWordModel(
      id: id ?? this.id,
      message: message ?? this.message,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [
        id,
        message,
        isFavorite,
      ];
}
