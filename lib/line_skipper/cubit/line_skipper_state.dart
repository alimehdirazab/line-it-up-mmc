part of 'line_skipper_cubit.dart';

class LineSkipperState extends Equatable {
  final int selectedPriceChipIndex;
  final int selectedTipChipIndex;

  const LineSkipperState({
    this.selectedPriceChipIndex = -1, // Default -1 means no chip is selected
    this.selectedTipChipIndex = -1,
  });

  LineSkipperState copyWith({
    int? selectedPriceChipIndex,
    int? selectedTipChipIndex,
  }) {
    return LineSkipperState(
      selectedPriceChipIndex:
          selectedPriceChipIndex ?? this.selectedPriceChipIndex,
      selectedTipChipIndex: selectedTipChipIndex ?? this.selectedTipChipIndex,
    );
  }

  @override
  List<Object> get props => [selectedPriceChipIndex, selectedTipChipIndex];
}
