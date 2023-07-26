class GameNewsModel {
  final String cover,
      gamenews_name,
      author_name,
      platform,
      short_description,
      description;
  final int author_id, id_game;

  GameNewsModel({
    required this.cover,
    required this.gamenews_name,
    required this.author_name,
    required this.id_game,
    required this.author_id,
    required this.platform,
    required this.short_description,
    required this.description,
  });

  factory GameNewsModel.fromJSON(Map parsedJson) {
    return GameNewsModel(
        cover: parsedJson['cover'],
        gamenews_name: parsedJson['gamenews_name'],
        id_game: parsedJson['id_game'],
        platform: parsedJson['platform'],
        short_description: parsedJson['short_description'],
        author_id: parsedJson['author_id'],
        author_name: parsedJson['author_name'],
        description: parsedJson['description']);
  }
}
