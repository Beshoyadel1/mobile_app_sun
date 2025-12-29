abstract class FileState {}

class FileInitial extends FileState {}

class FilePicked extends FileState {
  final String fileName;
  FilePicked(this.fileName);
}
