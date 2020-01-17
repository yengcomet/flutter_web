class Movie {
  List<Branch> branches;
  List<Showing> showings;
  List<Comming> commings;

  Movie({this.branches, this.showings, this.commings});

  Movie.fromJson(Map json)
      : branches = json['branches'],
        showings = json['showings'],
        commings = json['commings'];

  Map toJson() {
    return {'branches': branches, 'showings': showings, 'commings': commings};
  }
}

class Branch {
  int id;
  String name;
  String detail;
  String conver;
  String nameLao;
  String detailLao;

  Branch(
      {this.detail,
      this.detailLao,
      this.id,
      this.name,
      this.nameLao,
      this.conver});

  Branch.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        detail = json['detail'],
        conver = json['conver'],
        nameLao = json['name_lo'],
        detailLao = json['detail_lo'];

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'detail': detail,
      'conver': conver,
      'name_lo': nameLao,
      'detial_lo': detailLao
    };
  }
}

class Showing {
  int id;
  String title;
  String titleLao;
  String description;
  String descriptionLao;
  int duration;
  String releasedDate;
  String youtubeID;
  String poster;

  Showing(
      {this.id,
      this.description,
      this.descriptionLao,
      this.duration,
      this.poster,
      this.releasedDate,
      this.title,
      this.titleLao,
      this.youtubeID});

  Showing.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        titleLao = json['title_lo'],
        description = json['description'],
        descriptionLao = json['description_lo'],
        duration = json['duration'],
        releasedDate = json['released_date'],
        youtubeID = json['youtube_id'],
        poster = json['poster'];

  Map toJson() {
    return {
      'id': id,
      'title': title,
      'title_lo': titleLao,
      'description': description,
      'description_lo': descriptionLao,
      'duration': duration,
      'released_date': releasedDate,
      'youtube_id': youtubeID,
      'poster': poster
    };
  }
}

class Comming {
  String section;
  String sectionLao;
  String movies;
  
  Comming({this.section, this.sectionLao, this.movies});

  Comming.fromJson(Map json)
      : section = json['section'],
        sectionLao = json['section_lo'],
        movies = json['movies'];

  Map toJson() {
    return {'section': section, 'section_lo': sectionLao, 'movies': movies};
  }
}
