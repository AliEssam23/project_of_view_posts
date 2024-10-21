import 'package:flutter/material.dart';
import 'package:project_of_view_posts/pages/homePage/controllerOfHomePage.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  controllerOfHomePage controller = Get.put(controllerOfHomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),

      body: Obx((){
if (controller.info.value.isEmpty) {

  return Center(child: CircularProgressIndicator());

}
else {
  return  ListView.builder(
    itemCount: controller.info.length,
    itemBuilder: (BuildContext,index){
        return Card(
margin: EdgeInsets.all(10),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
            Text(controller.info[index].title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(controller.info[index].body),
            
            ],
            ),
          ),
        );
          
        });
}

      }
        
        
        
       
      ),
    );
  }
}
