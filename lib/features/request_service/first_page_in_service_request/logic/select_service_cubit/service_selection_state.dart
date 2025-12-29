abstract class ServiceSelectionState {}

class ServiceInitial extends ServiceSelectionState {}

class ServiceSelected extends ServiceSelectionState {
  final int index;
  final String imgPathSelect;
  final String text;

  ServiceSelected({
    required this.index,
    required this.imgPathSelect,
    required this.text,
  });
}
