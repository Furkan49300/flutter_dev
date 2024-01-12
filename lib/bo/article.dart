

class Article {
  String nom;
  String description;
  String categorie;
  String image;
  double prix;

  Article({
    required this.nom,
    required this.description,
    required this.categorie,
    required this.image,
    required this.prix,
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      nom: map['title'] as String,
      description: map['description'] as String,
      categorie: map['category'] as String,
      image: map['image'] as String,
      prix: map['price'] != null ? (map['price'] as num).toDouble() : 0.0,
    );
  }
}