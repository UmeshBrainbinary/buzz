import 'package:buzz/screens/cart/widget/cart_widget.dart';
import 'package:buzz/screens/product_page/widget/product_page_widget.dart';
import 'package:buzz/screens/project_list/product_list_controller.dart';
import 'package:buzz/screens/project_list/widget/product_list_widget.dart';
import 'package:buzz/utils/Assets_res.dart';
import 'package:buzz/utils/Color.dart';
import 'package:buzz/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectListScreen extends StatefulWidget {
  const ProjectListScreen({super.key});

  @override
  State<ProjectListScreen> createState() => _ProjectListScreenState();
}

class _ProjectListScreenState extends State<ProjectListScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  ProductListController productListController = Get.put(ProductListController());


  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      productListController.changeTabIndex(tabController.index);
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget tabContainer1() {
    return SizedBox(
      width: 400,
      child: TabBar(
        dividerHeight: 0,
        controller: tabController,
        tabs: [
          const Tab(text: 'View all'),
          const Tab(text: 'Most Recent'),
          const Tab(text: 'Popular'),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          row(text: StringRes.projectList, data: StringRes.projectList),
          Wrap(
            children: [
              tabContainer1(),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorRes.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetRes.user,height: 20,width: 20,),
                    SizedBox(width: 10,),
                    Text(StringRes.search),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorRes.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(CupertinoIcons.add_circled,color: ColorRes.white,),
                    SizedBox(width: 10,),
                    Text(StringRes.create,style: TextStyle(color: ColorRes.white),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Wrap(
            children: [
              SizedBox(
                height: 40,
                width: 200,
                child: TextFormField(
                  controller: productListController.searchController,
                  decoration: InputDecoration(
                    hintText: 'Search..',
                    hintStyle: TextStyle(color: ColorRes.textcolor,),
                    suffixIcon: Icon(CupertinoIcons.search,color: ColorRes.textcolor,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorRes.textcolor)
                    )
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorRes.textcolor)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.filter_alt_outlined,color: ColorRes.textcolor,),
                    Text(StringRes.filter),
                    Container(
                      height: 20,
                      width: 2,
                      color: ColorRes.textcolor,
                    ),
                    Text('2',style: TextStyle(color: ColorRes.blue),),

                  ],
                ),
              ),
              Container(
                  width: 400,
                  child: tabContainerList()),
            ],
          )
        ],
      ),
    );
  }
}
