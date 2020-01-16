class Movie {
  int id;
  String name;
  String email;

  Movie(int id, String name, String email) {
    this.id = id;
    this.name = name;
    this.email = email;
  }

  Movie.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['detail'];

  Map toJson() {
    return {'id': id, 'name': name, 'detail': email};
  }
}