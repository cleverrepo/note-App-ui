import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart" as sql;
class SqlHelper {
  static Future<void> createTable(sql.Database database)async{
    await database.execute("""CREATE TABLE noteapp(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    body TEXT
    )""");
  }

  static Future<sql.Database>mydb()async{
    return sql.openDatabase("database.db",version: 1,
    onCreate: (sql.Database databse,int version)async{
await createTable(databse);
     });
  }
 static Future<int>createItems(String title,String description)async{
    final db=await SqlHelper.mydb();
    final info={'title':title,'description':description};
    final id=await db.insert("noteapp", info,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;

 }
 static Future<List<Map<String,dynamic>>>getnoteapp()async{
    final db=await SqlHelper.mydb();
    return db.query('noteapp',orderBy: "id");

 }
 static Future<List<Map<String,dynamic>>>getnoteapps(int id)async{
    final db=await SqlHelper.mydb();
    return db.query('noteapp',where: "id=?",whereArgs: [id],limit:1 );
 }
 static Future<int>updatenote(
     int id,String title,String description
     )async{
    final db=await SqlHelper.mydb();
    final data={
      'title':title,
      'description':description,

    };
    final result=await db.update('noteapp', data,where: "id=?",whereArgs: [id]);
    return result;
 }
 static Future<void>deletenote(int id)async{
    final db=await SqlHelper.mydb();
    try{
      await db.delete("noteapp",where: "id=?",whereArgs: [id]);
    }catch(error){
      debugPrint("opppss something went wrong:$error");
    }
 }
}
