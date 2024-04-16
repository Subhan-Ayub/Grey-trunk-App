import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/view/ScanHistory/bottombar.dart';
class FoundAssets extends StatefulWidget {
  const FoundAssets({super.key});

  @override
  State<FoundAssets> createState() => _FoundAssetsState();
}

class _FoundAssetsState extends State<FoundAssets> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add Assets',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(0.0), // Adjust padding as needed
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children:const [
                      Icon(Icons.lightbulb, color: Colors.yellow),
                      SizedBox(width: 8), // Add space between Icon and Text
                      Expanded(child: Text('List of assets that are found in the selected Site or location ')),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children:const [
                    Text('Result:',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text('0 Assets',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text('There are not assets present in the selected Site or Location',
              style: TextStyle(fontSize: 15),)),
          )
        ],
      ),
      bottomNavigationBar: historyBottom(0),
    );
  }
}
