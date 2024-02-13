import 'package:equatable/equatable.dart';
import 'package:mm_case/app/models/inspiration_word_model.dart';

class InspirationState extends Equatable {
  const InspirationState({
    this.isLoading = false,
    this.inspirationItems = const [],
  });

  final bool isLoading;
  final List<InspirationWordModel> inspirationItems;

  //* Copy with
  InspirationState copyWith({bool? isLoading, List<InspirationWordModel>? inspirationItems}) {
    return InspirationState(
      isLoading: isLoading ?? false,
      inspirationItems: inspirationItems ?? [],
    );
  }

  //* Get props
  @override
  List<Object?> get props => [
        isLoading,
        inspirationItems,
      ];
}
