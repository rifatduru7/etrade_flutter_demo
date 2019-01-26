class Product {
  int _id;
  String _name;
  String _description;
  double _price;

  Product(this._name, this._description, this._price);
  Product.widthId(this._id, this._name, this._description, this._price);

  //Getter Alanı
  int get id => _id;
  String get name => _name;
  String get description => _description;
  double get price => _price;

  //Setter Alanı [Name İçin]
  set name(String value) {
    if (value.length >= 2) {
      _name = value;
    }
  }

  //Setter Alanı [Description İçin]
  set description(String value) {
    if (value.length >= 10) {
      _description = value;
    }
  }

    //Setter Alanı [Price İçin]
  set price(double value) {
    if (value >0) {
      _price = value;
    }
  } 

  Map <String,dynamic> toMap(){
    var map = Map<String , dynamic>();
    map["name"] = _name;
    map["description"] = _description;
    map["price"] = _price;
    if (_id != null) { //!= farklıdır demektir.ID verilmişse gibi de okunabilir.
      map["id"] = _id;
    }
    return map;


  }


  Product.fromObject(dynamic o){
    this._id = o["id"];
    this._name = o["name"];
    this._description = o["description"];
    this._price = o["price"];
  }
}
