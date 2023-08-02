class TodoModel {
  String? id;
  String? title;
  String? description;
  bool? isDone;
  String? date;

  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
    required this.date,
  });

  factory TodoModel.fromJson(Map<String, Object?> json) {
    return TodoModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isDone: json['isComplited'] as bool?,
      date: json['date'] as String?,
    );
  }

  @override
  String toString() =>
      'TodoModel(id: $id, title: $title, description: $description)';
}
