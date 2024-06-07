import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';


class FileController extends GetxController {
  var files = <FileModel>[].obs;
  var selectedFiles = <int>[].obs;
  var selectedFolders = <String>[].obs;

  void addFile(FileModel file) {
    files.add(file);
  }

  void toggleSelection(int index) {
    if (selectedFiles.contains(index)) {
      selectedFiles.remove(index);
    } else {
      selectedFiles.add(index);
    }
  }
  void toggleFolderSelection(String folderName) {
    if (selectedFolders.contains(folderName)) {
      selectedFolders.remove(folderName);
    } else {
      selectedFolders.add(folderName);
    }
  }

  bool isSelected(int index) {
    return selectedFiles.contains(index);
  }
  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      addFile(FileModel(file.name, file.size));
    }
  }
}


class FileModel {
  final String name;
  final int size; // File size in bytes

  FileModel(this.name, this.size);
}

