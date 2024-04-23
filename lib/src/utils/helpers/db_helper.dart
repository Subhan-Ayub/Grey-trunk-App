import 'dart:async';
import 'package:flutter_application_1/src/models/task_model.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper extends GetxController {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get databasee async {
    if (database == null) {
      database = await initializeDatabase();
      print('jjj');
    }
    return database!;
  }

  Future<Database> initializeDatabase() async {
    final dbPath = await getDatabasesPath();
    print('object');
    const dbName = 'rfid.db';
    print('creating');
    return await openDatabase(
      '$dbPath/$dbName',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE assets (id INTEGER PRIMARY KEY AUTOINCREMENT, productId TEXT, brand TEXT, description TEXT, purchaseDate TEXT, category TEXT, model TEXT, serialNumber TEXT, cost TEXT, assignedTo TEXT, lastScanDate TEXT, dueDate TEXT, disposeDate TEXT, createdDate TEXT, site TEXT, location TEXT, depreciation TEXT, depreciationMethod TEXT, totalCost TEXT, assetLife TEXT, salvageValue TEXT, dateAquired TEXT, img  TEXT)');
      },
    );
  }

  Future<int> insertTask(Task task) async {
    final db = await databasee;
    print(task.toMap());
    return await db.insert('assets', task.toMap()
        // {
        //   "ProductId": "L-1001",
        //   "Brand": "lenovo",
        //   "Description": "Laptop",
        //   "PurchaseDate": "01/01/2020".toString(),
        //   "Category": "HP",
        //   "Model": "thinkbook g4",
        //   "SerialNumber": "MP24C06F",
        //   "Cost": "8000.0",
        //   "AssignedTo": "NA",
        //   "LastScanDate": "03/20/2024".toString(),
        //   "DueDate": "NA",
        //   "DisposeDate": "NA",
        //   "CreatedDate": "03/20/2024".toString(),
        //   "Site": "Lahore Office",
        //   "Location": "HAFIZ CENTER",
        //   "Depreciation": "Yes",
        //   "DepreciationMethod": "Sum of the Years Digits",
        //   "TotalCost": "99",
        //   "AssetLife": "66",
        //   "SalvageValue": "99",
        //   "DateAquired": "04/16/2024".toString(),
        //   "img": 'na'
        // },
        );
  }

  getTasks(String table) async {
    final db = await databasee;
    final List<Map<String, dynamic>> maps = await db.query(table);
    // print(maps);
    // return List.generate(maps.length, (i) => Task.fromMap(maps[i]));
    return maps;
  }

  Future<void> updateTask(Task task) async {
    final db = await databasee;
    await db.update(
      'assets',
      task.toMap(),
      where: 'id = ?',
      whereArgs: [task.productId],
    );
  }

  Future<void> deleteTask(int id) async {
    final db = await databasee;
    await db.delete(
      'assets',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteTable(String tableName) async {
    final database = await databasee;
    await database
        .execute("DROP TABLE IF EXISTS $tableName"); // Use IF EXISTS for safety
  }
  delettte()async{
     final dbPath = await getDatabasesPath();
    const dbName = 'rfid.db';
    deleteDatabase( '$dbPath/$dbName');
    print(';;;;;');
  }
}
