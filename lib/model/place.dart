class Place {
  Place({
    required this.id,
    this.placeCategoryId,
    this.name,
    this.description,
    this.address,
  });

  int id;
  int? placeCategoryId;
  String? name;
  String? description;
  String? address;

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json["id"],
        placeCategoryId: json["place_category_id"],
        name: json["name"],
        description: json["description"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "place_category_id": placeCategoryId,
        "name": name,
        "description": description,
        "address": address,
      };
}
