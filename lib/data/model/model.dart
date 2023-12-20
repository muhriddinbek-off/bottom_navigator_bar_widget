class Model {
  final List<Results> result;
  final Info info;
  Model({
    required this.result,
    required this.info,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    List<Results> data = [];
    json['results'].forEach((element) {
      data.add(Results.fromJson(element));
    });
    return Model(
      result: List.from(data),
      info: Info.fromJson(json['info']),
    );
  }
}

class Results {
  final String gender;
  final String email;
  final String phone;
  final Pictures pictures;
  Results({
    required this.email,
    required this.gender,
    required this.phone,
    required this.pictures,
  });
  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      email: json['email'],
      gender: json['gender'],
      phone: json['phone'],
      pictures: Pictures.fromJson(json['picture']),
    );
  }
}

class Pictures {
  final String large;
  final String medium;
  final String thumbnail;
  Pictures({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  factory Pictures.fromJson(Map<String, dynamic> json) {
    return Pictures(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

class Info {
  final String seed;
  final int results;
  Info({
    required this.results,
    required this.seed,
  });
  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      results: json['results'],
      seed: json['seed'],
    );
  }
}
