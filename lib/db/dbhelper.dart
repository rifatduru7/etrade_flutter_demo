import 'package:sqflite/sqflite.dart';
import 'dart:async'; //Asenkron operasyonlar için.
import 'dart:io'; //Veritabanımıza ulaşabilmek için
import 'package:path_provider/path_provider.dart'; //Dosya erişimi için
import 'package:etrade_flutter_demo/models/product.dart';

class Dbhelper {
  String tblProduct = "Products";
  String colId = "Id";
  String colDescription = "Description";
  String colPrice = "Price";
  String colName = "Name";

  static final Dbhelper _dbhelper = Dbhelper._internal(); //final keywordu sayesinde bir değişken oluşturulduğunda readOnly oluşur yani değişken atanamaz.
  Dbhelper._internal(); //Dbhelper'ın statik olarak heryerden ulaşılabilmesi için

  factory Dbhelper(){
    return _dbhelper;
  }

  static Database _db; //Database nesnesine ulaşmamızı sağlar

  //Asenkron oluşturulan yapılarda aynı anda 2-3 işlem yapabilmeye olanak sağlar

  Future <Database> get db async{
    if (_db == null) {
      _db = await intializeDb();
    }
    return _db;
  }

}
