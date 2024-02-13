import 'package:equatable/equatable.dart';
import 'package:mm_case/app/models/inspiration_word_model.dart';

class InspirationState extends Equatable {
  const InspirationState({
    this.isMenuExpanded = false,
    this.isLoading = false,
    this.inspirationItems = const [],
  });

  final bool isMenuExpanded;
  final bool isLoading;
  final List<InspirationWordModel> inspirationItems;

  //* Copy with
  InspirationState copyWith({bool? isMenuExpanded, bool? isLoading, List<InspirationWordModel>? inspirationItems}) {
    return InspirationState(
      isMenuExpanded: isMenuExpanded ?? false,
      isLoading: isLoading ?? false,
      inspirationItems: inspirationItems ?? [],
    );
  }

  //* Get props
  @override
  List<Object?> get props => [
        isMenuExpanded,
        isLoading,
        inspirationItems,
      ];
}
