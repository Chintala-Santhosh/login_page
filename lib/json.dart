class JsonModel1{
  String? name;
  String? mobile;
  String? email;

  JsonModel1({
    this.mobile,
    this.name,
    this.email
  }
  );
  JsonModel1.fromJson(Map<String,dynamic>json){
    name=json['name'];
    mobile=json['mobile'];
    email=json['email'];

}

}
