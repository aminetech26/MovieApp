class CastCrewResultModel {
  late int id;
  late List<CastModel> cast;
  late List<Crew> crew;

  CastCrewResultModel({
    required this.id,
    required this.cast,
    required this.crew,
  });

  CastCrewResultModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    // Initialize the lists
    cast = [];
    crew = [];

    if (json['cast'] != null) {
      json['cast'].forEach((v) {
        cast.add(CastModel.fromJson(v));
      });
    }
    if (json['crew'] != null) {
      json['crew'].forEach((v) {
        crew.add(Crew.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cast'] = cast.map((v) => v.toJson()).toList();
    data['crew'] = crew.map((v) => v.toJson()).toList();
    return data;
  }
}

class CastModel {
  final int? castId;
  final String? character;
  final String? creditId;
  final int? gender;
  final int? id;
  final String? name;
  final int? order;
  final String? profilePath;

  CastModel({
    required this.castId,
    required this.character,
    required this.creditId,
    required this.gender,
    required this.id,
    required this.name,
    required this.order,
    required this.profilePath,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      castId: json['cast_id'],
      character: json['character'],
      creditId: json['credit_id'],
      gender: json['gender'],
      id: json['id'],
      name: json['name'],
      order: json['order'],
      profilePath: json['profile_path'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cast_id'] = castId;
    data['character'] = character;
    data['credit_id'] = creditId;
    data['gender'] = gender;
    data['id'] = id;
    data['name'] = name;
    data['order'] = order;
    data['profile_path'] = profilePath;
    return data;
  }
}

class Crew {
  String? creditId;
  String? department;
  int? gender;
  int? id;
  String? job;
  String? name;
  String? profilePath;

  Crew(
      {required this.creditId,
      required this.department,
      required this.gender,
      required this.id,
      required this.job,
      required this.name,
      required this.profilePath});

  Crew.fromJson(Map<String, dynamic> json) {
    creditId = json['credit_id'];
    department = json['department'];
    gender = json['gender'];
    id = json['id'];
    job = json['job'];
    name = json['name'];
    profilePath = json['profile_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['credit_id'] = creditId;
    data['department'] = department;
    data['gender'] = gender;
    data['id'] = id;
    data['job'] = job;
    data['name'] = name;
    data['profile_path'] = profilePath;
    return data;
  }
}
