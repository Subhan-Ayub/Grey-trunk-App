import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
class AddAssets extends StatefulWidget {
  const AddAssets({super.key});

  @override
  State<AddAssets> createState() => _AddAssetsState();
}

class _AddAssetsState extends State<AddAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('ADD ASSET'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormFildWidgets(title: 'Asset Tag ID:*', icon: Icons.qr_code_scanner),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Category', icon: Icons.keyboard_arrow_down),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Description', icon: Icons.description),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Assigned To', icon: Icons.assignment),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Last Scanned Date', icon: Icons.date_range),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Due Date', icon: Icons.date_range),
          ],
        ),
      ),
    );
  }
}
