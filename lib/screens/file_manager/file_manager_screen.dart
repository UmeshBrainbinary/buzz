import 'package:buzz/screens/file_manager/file_manager_controller.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FileScreen extends StatelessWidget {
  final FileController fileController = Get.put(FileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f4f6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              row(text: StringRes.fileManager, data: StringRes.fileManager),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () async {
                      fileController.pickFile();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.blueAccent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Folders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ResponsiveBuilder(builder: (context, sizingInformation) {
                return
                  Obx(
                        () => GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: fileController.files.length,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                          sizingInformation.isDesktop?4:sizingInformation.isTablet?3:sizingInformation.isMobile?2:sizingInformation.isSmall?1:4,
                          mainAxisExtent: 220
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              fileController.toggleSelection(index);
                            },
                            child: Obx(()=> MouseRegion(
                              onEnter: (_) {
                                fileController.toggleHoverStateForFile(index, true);
                              },
                              onExit: (_) {
                                fileController.toggleHoverStateForFile(index, false);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: fileController.isSelected(index) || fileController.hoveredIndices.contains(index) ?  const Color(0xff0059E7)  : Colors.transparent,
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
                                            child: Checkbox(value: fileController.isSelected(index), activeColor: Color(0xff0059E7),shape: CircleBorder(),onChanged: (value) {

                                            },),
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
                                          Text(fileController.files[index].name,style: TextStyle(fontWeight: FontWeight.w500),),
                                          const Spacer(),
                                          CircleAvatar(radius: 15,backgroundColor: Color(0xffCACACD),child: const Icon(Icons.person,color: Color(0xff7B7B82),)),
                                        ],
                                      ),
                                      Text('${fileController.files[index].size} bytes',style: TextStyle(color: Color(0xff7B7B82)),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ;
              },)
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
      ),
    );
  }

  Widget folderItem(String folderName, int fileCount) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          fileController.toggleFolderSelection(folderName);
        },
        child: Obx(() {
          bool isSelected = fileController.selectedFolders.contains(folderName);
          bool isHovered = fileController.hoverStatesFolder[folderName] ?? false;

          return MouseRegion(
            onEnter: (_) {
              fileController.toggleHoverStateFolder(folderName, true);
            },
            onExit: (_) {
              fileController.toggleHoverStateFolder(folderName, false);
            },
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: isSelected || isHovered ? const Color(0xff0059E7) : Colors.transparent,
                  ),
                  //color: isSelected ? Colors.blue.shade50 : Colors.white,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.folder,
                        size: 35,
                        color: Color(0xffFCD296)),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(folderName),
                        const SizedBox(height: 5),
                        Text('$fileCount Files',style: const TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
