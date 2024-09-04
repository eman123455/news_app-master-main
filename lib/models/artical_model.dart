class ArticalModel {
  final String? imagePath;
  final String title;
  final String? description;

  const ArticalModel(
    
      {required this.imagePath,
      required this.title,
      required this.description});

  factory ArticalModel.fromJson(Map<String, dynamic> map) {
    return ArticalModel(
         imagePath:map["urlToImage"],
         title: map['title'], 
         description: map['description']??"No Description",
         
         );
  }
}
