class Movie {
  final String name;
  final String image;
  final String summary;
  final String language;
  final List<String> genres;

  Movie({
    required this.name,
    required this.image,
    required this.summary,
    required this.language,
    required this.genres,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'] ?? 'N/A',
      image: json['image'] != null ? json['image']['medium'] : '',
      summary: json['summary'] ?? 'No description available',
      language: json['language'] ?? 'N/A',
      genres: List<String>.from(json['genres'] ?? []),
    );
  }
}
