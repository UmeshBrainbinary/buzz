import 'package:buzz/screens/file_manager/file_manager_controller.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FileScreen extends StatelessWidget {
  final FileController fileController = Get.put(FileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            row(text: StringRes.fileManager, data: StringRes.fileManager),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () async {
                    fileController.pickFile();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.blueAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Add File',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Folders',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Wrap(
              spacing: 10,
              children: [
                folderItem('Design Collections', 15),
                folderItem('Figma Systems', 10),
                folderItem('How to Build Brand', 20),
                folderItem('Flutter', 5),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              'Files',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Obx(
                    () => GridView.builder(
                  itemCount: fileController.files.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          fileController.toggleSelection(index);
                        },
                        child: Obx(()=> Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: fileController.isSelected(index)
                                    ? Colors.blueAccent
                                    : Colors.transparent,
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(color: Colors.grey),
                                          color: fileController.isSelected(index)
                                              ? Colors.blue
                                              : Colors.transparent,
                                        ),
                                        child: fileController.isSelected(index)
                                            ? Center(
                                          child: Icon(
                                            Icons.done,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        )
                                            : SizedBox(),
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.more_vert, color: Colors.grey),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Center(
                                    child: Icon(
                                      Icons.file_copy_outlined,
                                      color: Colors.red,
                                      size: 50,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(fileController.files[index].name),
                                      const Spacer(),
                                      const Icon(Icons.person_2_rounded),
                                    ],
                                  ),
                                  Text('${fileController.files[index].size} bytes'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // Wrap(
            //    spacing: 10,
            //    runSpacing: 10,
            //    children: [
            //      fileItem('New Wireframe', 'PDF', 200),
            //      fileItem('2nd Meeting MOM', 'DOC', 100),
            //      fileItem('Brainstorming', 'DOC', 300),
            //      fileItem('Requirement', 'PDF', 150),
            //      fileItem('Third Meeting MOM', 'DOC', 400),
            //      fileItem('New Wireframe', 'PDF', 200),
            //    ],
            //  )
          ],
        ),
      ),
    );
  }

  Widget folderItem(String folderName, int fileCount) {
    return GestureDetector(
      onTap: () {
        fileController.toggleFolderSelection(folderName);
      },
      child: Obx(() {
        bool isSelected = fileController.selectedFolders.contains(folderName);
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.grey,
            ),
            //color: isSelected ? Colors.blue.shade50 : Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.folder, color: isSelected ? Colors.blue : Colors.grey),
              const SizedBox(height: 5),
              Text(folderName),
              const SizedBox(height: 5),
              Text('$fileCount Files'),
            ],
          ),
        );
      }),
    );
  }

  Widget fileItem(String fileName, String fileType, int fileCount) {
    return InkWell(
        child: MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        // Handle hover event here if needed
      },
      child: Obx(() {
        bool isSelected = fileController.selectedFiles.contains(fileName);
        return Container(
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.grey,
            ),
            color: isSelected ? Colors.blue.shade50 : Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fileTypeIcon(fileType, isSelected),
              const SizedBox(height: 5),
              Text(fileName),
              const SizedBox(height: 5),
              Text('$fileCount Files'),
            ],
          ),
        );
      }),
    ));
  }

  Widget fileTypeIcon(String fileType, bool isSelected) {
    IconData iconData;
    Color iconColor = isSelected ? Colors.blue : Colors.grey;
    switch (fileType) {
      case 'PDF':
        iconData = Icons.picture_as_pdf;
        break;
      case 'DOC':
        iconData = Icons.insert_drive_file;
        break;
      default:
        iconData = Icons.insert_drive_file;
    }
    return Icon(iconData, color: iconColor);
  }
}
