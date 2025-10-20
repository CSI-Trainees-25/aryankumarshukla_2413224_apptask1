import 'package:flutter/material.dart';
import 'package:to_do_app/modals/task_modals.dart';
import 'package:to_do_app/screens/detail/widgets/date_picker.dart';

   class DetailPage extends StatelessWidget{
      final Task task;
  DetailPage(this.task);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: ( context,innerBoxIsScrolled) => [_buildAppBar(context),],
            body:SingleChildScrollView(
            child: Container(
               height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2,
                    child:GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {},
                      child: DatePicker(
                        
                    ),
                    ),
                  ),
                ],
              ),
            ),
            ),
      ),
      );
  }
  Widget _buildAppBar(BuildContext context){
    return SliverAppBar(
      expandedHeight: 80,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: ()=>Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
        color: Colors.white,
      ),
        //iconColor: Colors.white,
        actions: [
          Icon(
            Icons.more_vert,
            size: 40,
            color: Colors.white,
          )
        ],
        flexibleSpace: FlexibleSpaceBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${task.title!} tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'you have ${task.left} tasks left for today',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        );
  }
}