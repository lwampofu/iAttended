import 'package:flutter/material.dart';
import './student/records.dart';
import './student/absence_request.dart';
import './student/attend_class.dart';
import './student/profile.dart';
import 'home.dart';

class Dashboard extends StatefulWidget{
  @override
  _DashboardPageState createState()=>_DashboardPageState();
}

class _DashboardPageState extends State<Dashboard> {
  // This widget contains the main dashboard for the application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _appBarColor,
        
        title: Text('Student Dashboard', style: TextStyle(fontSize: 24, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){}),
          IconButton(
          icon: Icon(Icons.account_balance),
          onPressed: (){}),
       
      ],
      
      ),
      drawer: _SidebarMenu (),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(fit: BoxFit.fill,child: Image(image: AssetImage('assets/images/iAttended2.jpg')),)
      ),
      
      
      );
       
     
    
  }
  
}

class _SidebarMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Drawer(child: 
      ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[          
          DrawerHeader(                
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50, 
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/jm.jpg'),),
                    Text('John Morris', style: TextStyle(color: Colors.white, fontSize: 22),textAlign: TextAlign.right,),
                    SizedBox(width: 24,),
                  ],
                ),
                decoration: BoxDecoration(color: Color(0xFF7B51D3)),),          
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.account_circle),
                SizedBox(width: 22),
                Text('Profile', 
                style: _sidebarMenuStyle,),
              ],
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> new Profile()));

            }
            ),
            new Divider(
              color: Colors.black,
              height: 7.0,
            ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.assignment),
                SizedBox(width: 22),
                Text('Attend Class', 
                style: _sidebarMenuStyle,),
              ],
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> new AttendClass()));

            }
            ),
            new Divider(
              color: Colors.black,
              height: 7.0,
            ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.schedule),
                SizedBox(width: 22),
                Text('Absence Request', 
                style: _sidebarMenuStyle,),
              ],
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> new EmailApp()));

            }
            ),
            new Divider(
              color: Colors.black,
              height: 7.0,
            ),
          
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.assessment),
                SizedBox(width: 22),
                Text('Records',
                style: _sidebarMenuStyle,),
              ],
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> new Records()));

            }
            ,),
            new Divider(
              color: Colors.black,
              height: 7.0,
            ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.settings_power),
                SizedBox(width: 22),
                Text('Logout',
                style: _sidebarMenuStyle,),
              ],
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=> new Home()));

            }
            ),
            new Divider(
              color: Colors.black,
              height: 7.0,
            ),
         
        ]
        ,))
    );
  }
}
//Creating the styles for the sidebar
TextStyle _sidebarMenuStyle =  TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

//Creating the color for theappbar
Color _appBarColor =  Color(0xFF7B51D3);