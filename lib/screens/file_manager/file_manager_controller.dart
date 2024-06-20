import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';


class FileController extends GetxController {
  var files = <FileModel>[
    FileModel("123.pdf", 123),
    FileModel("123.pdf", 123),
    FileModel("123.pdf", 123),
    FileModel("123.pdf", 123),
  ].obs;
  var selectedFiles = <int>[].obs;
  var selectedFolders = <String>[].obs;
  var hoverStatesFolder = <String, bool>{}.obs;
  RxSet<int> hoveredIndices = <int>{}.obs;


  void toggleHoverStateForFile(int index, bool isHovered) {
    if (isHovered) {
      hoveredIndices.add(index);
    } else {
      hoveredIndices.remove(index);
    }
  }

  bool isHovered(int index) {
    return hoveredIndices.contains(index);
  }


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

  void toggleHoverStateFolder(String folderName, bool hover) {
    hoverStatesFolder[folderName] = hover;
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

