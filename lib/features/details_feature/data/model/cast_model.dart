class CastModel {
  final List<Cast> cast;

  CastModel({
    required this.cast,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      cast: List.from(
        (json['cast'] as List).map((e) => Cast.fromJson(e)).toList(),
      ),
    );
  }
}

class Cast {
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;

  Cast({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.castId,
    required this.character,
    required this.creditId,
    required this.order,
  });

  factory Cast.fromJson(Map<String, dynamic> json) {
    return Cast(
        adult: json['adult'],
        gender: json['gender'],
        id: json['id'],
        knownForDepartment: json['known_for_department'],
        name: json['name'],
        originalName: json['original_name'],
        popularity: json['popularity'],
        profilePath: json['profile_path'],
        castId: json['cast_id'],
        character: json['character'],
        creditId: json['credit_id'],
        order: json['order']);
  }
}
