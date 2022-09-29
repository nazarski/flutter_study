class ToDo {
  String title;
  bool status;

  ToDo(this.title, this.status);

  toJson() {
    return {"title": title, "status": status};
  }

  static fromJson(jsonData) {
    return ToDo(jsonData['title'], jsonData['status']);
  }
}
