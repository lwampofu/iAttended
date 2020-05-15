import 'package:flutter/material.dart';


class Profile extends StatefulWidget{
  @override
  _ProfilePage createState()=> _ProfilePage();
}
class _ProfilePage extends State<Profile> {
  // This widget contains the main dashboard for the application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7B51D3),
        title: Text('Student Profile', style: TextStyle(fontSize: 24, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      
      /* actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){}),
          IconButton(
          icon: Icon(Icons.account_balance),
          onPressed: (){}),
       
      ], */
      ),  
      body: ProfilePage(), 
            );
            
             
           
          
        }
      }
      
class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
      Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          Image(
            width: double.infinity,
            height: MediaQuery.of(context).size.height /3,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/ashesi.jpg'),),
          Positioned(
            bottom: -60,
            child: CircleAvatar(
              
              radius: 80, 
              backgroundColor: Colors.white, 
              backgroundImage: AssetImage('assets/images/jm.jpg'),),)
        ]
      ),
      SizedBox(height: 50,),
      ListTile(
        title: Center(child:Text('John Morris', style: TextStyle(fontWeight: FontWeight.bold),)),
        subtitle: Center( child:Text('Bsc. Computer Science'))
      ),
      ListTile(
        title: Text('About Me'),
        subtitle: Text('I am a junior at Ashesi University, Ghana, pursuing Computer Science. As an undergraduate student, I am passionate about technology interruption, advances and developments in the 21st Century. how technology can support and enhance business processes and activities.  I am highly aware of industry standards, issues and trends particularly with regards to usability, accessibility and emerging technology; through my international experience with higher educational institutions.'),
      )
    ],);

}
