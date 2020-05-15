import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class Records extends StatefulWidget{
  @override
  _RecordsPage createState()=> _RecordsPage();
}
class _RecordsPage extends State<Records> {
  // This widget contains the main dashboard for the application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7B51D3),
        title: Text('Student Records', style: TextStyle(fontSize: 24, color: Colors.white),),
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
      body: RecordsHome(),
      );
       
     
    
  }
}

//charts

class RecordsHome extends StatefulWidget {
  @override
  _RecordsHomeState createState() {
      return _RecordsHomeState();
    }
  }
  
  class _RecordsHomeState extends State<RecordsHome>{
  @override
  Widget build(BuildContext context) {
    var data = [
      Sales("Software Engineering",90, Colors.lightBlue),
      Sales("Algorithm and Design Analysis",95, Colors.teal),
      Sales("Machine Learning",98, Colors.pink),
      Sales("Computer Organization and Architecture",100, Colors.purple),
      Sales("Governance in Africa",95, Colors.green),
      Sales("Foundations of Design and Entreprenurship",96, Colors.orange),      

    ];
    var series = [
      charts.Series(
        domainFn: (Sales sales,_)=>sales.day,
        measureFn: (Sales sales,_)=>sales.sold,
        colorFn:(Sales sales,_)=>sales.color,
        id: 'sales',
        data: data,
        labelAccessorFn: (Sales sales,_)=>'${sales.sold.toString()}')

    ];
    var chart = charts.PieChart(
      series,     
      defaultRenderer: charts.ArcRendererConfig(arcRendererDecorators: [charts.ArcLabelDecorator()],arcWidth: 80,),
      animationDuration: Duration(milliseconds: 500),
      
      behaviors: [
        new charts.DatumLegend(          
          position: charts.BehaviorPosition.bottom,
          outsideJustification: charts.OutsideJustification.middleDrawArea,
          insideJustification: charts.InsideJustification.topEnd,
          horizontalFirst: false,
          desiredMaxColumns: 2,
          cellPadding: new EdgeInsets.only(right: 4.0,bottom:10.0),
          entryTextStyle: charts.TextStyleSpec(
            color: charts.MaterialPalette.black,
            fontFamily: 'Georgia',
            fontSize: 15
          )
        )
      ],
      
      //bar chart implementation
      /* vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()), */
      animate: true,
      );     
    // TODO: implement build
      return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( children: <Widget>[
          Text('Percentage Attendance Analysis',style: TextStyle(fontSize: 20),),
          SizedBox(height: 500,child: chart,),
          ],),
    ));
  }
}

class Sales{
  final String day;
  final int sold;
  final charts.Color color;
  Sales(this.day,this.sold, Color color): this.color=charts.Color(r:color.red,g: color.green,b: color.blue,a: color.alpha);

}


