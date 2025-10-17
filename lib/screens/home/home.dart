import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/screens/home/widget/go_premium.dart';
import 'package:to_do_app/screens/home/widget/tasks.dart';

class HomePage extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Tasks',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child:Tasks(),
          )
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
        floatingActionButton:FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          backgroundColor:  Colors.black,
          onPressed: (){},
          child: Icon(Icons.add, 
          size:55),
          ) ,
      );
  }
  Widget _buildBottomNavigationBar(){
    return Container(
     decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
        color: Colors.grey.withValues(alpha: 0.2),
        spreadRadius: 5,
        blurRadius: 10,
        )
      ] 
     ),
     child: ClipRRect(
       borderRadius:BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child:  BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor:Colors.grey.withValues(alpha: 0.5),
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded, size:30),
          label: '  Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded, size:30),
          label: 'Person',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.settings_rounded, size:30),
        //   label: '',
        // ),
  
      ],
      ),
     )
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title:Row(
        children: [
          Container(
            height: 45,
            width: 45,
           // margin: EdgeInsets.only(left: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/avatar.jpg', ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Hello Aryan!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
         Icon(
            Icons.more_vert, 
            color: Colors.black, 
            size: 40),
      ],
    );
  }
}