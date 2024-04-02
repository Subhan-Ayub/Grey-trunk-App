import 'package:flutter/material.dart';
class ScanHistory extends StatefulWidget {
  const ScanHistory({super.key});

  @override
  State<ScanHistory> createState() => _ScanHistoryState();
}

class _ScanHistoryState extends State<ScanHistory> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Scan History'),
          centerTitle: true,
          bottom:  TabBar(
            tabs: <Widget>[
              Tab(
                text: 'UNSYNCED',
              ),
              Tab(
                text: 'SYNCED',
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Icon(Icons.lightbulb,color: Colors.yellow,),
                      SizedBox(width: 10,),
                      Text('Successfully Synced scan results will move to Synced tab',
                        softWrap: false,
                        maxLines: 2,),
                    ],),
                  ), SizedBox(height: 300,),
                  Align(alignment: Alignment.center,
                      child: Text("We can't find any offline scan results")),
                ],
              ),
            ),
           Column(
             children: [
               Container(
                 color: Colors.grey.shade100,
                 padding: EdgeInsets.all(8.0), // Adjust padding as needed
                 child: Row(
                   children: [
                     Icon(Icons.lightbulb, color: Colors.yellow),
                     SizedBox(width: 8), // Add space between Icon and Text
                     Text('Top on the list to view the detail of scan results'),
                   ],
                 ),
               )

             ],
           )
          ],
        ),
      ),
    );
  }
}
