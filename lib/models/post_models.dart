class Post{
  late int id;
  late String number,name;
  late String status;
  late Map data;

  Post({required this.id,required this.status,required this.data});
  Post.from({required this.id,required this.number,required this.name});
  Post.fromJson(Map<String,dynamic> json):
        id=json['id'],
        status=json['status'],
        data=json['data'];
  Map<String,dynamic> toJson(){
    return {
      'id':this.id,
      'status':this.status,
      'data':this.data,
    };
  }
}