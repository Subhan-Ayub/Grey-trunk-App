import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/view/ScanHistory/bottombar.dart';
class NewAssets extends StatefulWidget {
  const NewAssets({super.key});

  @override
  State<NewAssets> createState() => _NewAssetsState();
}

class _NewAssetsState extends State<NewAssets> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('New Assets'),
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
                      Expanded(child: Text('List of scanned assets that are not in the system and available to add')),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const[
                    Text('Result:',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text('1 Assets',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children:const [
                      Text('TagId:',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Text('6901462126755',),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
      bottomNavigationBar: historyBottom(3),

    );
  }
}
