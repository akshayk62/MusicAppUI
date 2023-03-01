

import 'package:flutter/material.dart';
import 'package:music_app_ui/musiclist.dart';


class HOmescreen extends StatelessWidget {
  const HOmescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(length: 1,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.center,
          end: Alignment.bottomCenter,
            
            colors: [
             const Color(0xFF303151).withOpacity(0.6),
             const Color(0xFF303151).withOpacity(0.6)
            ]) ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child:Padding(padding: EdgeInsets.only(top: 20,left: 22),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Icon(Icons.sort_rounded,color: Color(0xFF899CCF),size: 30,),
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Icon(Icons.more_vert,color: Color(0xFF899CCF),size: 30,),
                  )
    
                ],
              ),),
              SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(bottom: 5),
              child: Text('HEY LISTENER',style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 1),),),
              Padding(padding: EdgeInsets.only(bottom: 5),
              child: Text('what u want to hear?',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 16,)
        ),),
        Padding(padding: EdgeInsets.only(top: 15,bottom: 20,right: 20),
        child: Container(
          height: 50,
          width:300 ,
          decoration: BoxDecoration(
            color: Color(0xFF31314F),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search the Music' ,
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search,size: 30,
              color: Colors.white.withOpacity(0.5),),)
            ],
          ),
        ),
        ),
        TabBar(tabs: [
          Tab(text: 'Music'),
          
          
        ],),
        Flexible(child: TabBarView(children: [
          Musiclist()
        ],))
        
        
        ],
        ),
        ),
         ),
        ),
      ),
    );
  }
}
