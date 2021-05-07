import 'dart:convert';

SuperHero superHeroFromJson(String str) => SuperHero.fromJson(json.decode(str));

String superHeroToJson(SuperHero data) => json.encode(data.toJson());

class SuperHero {
  SuperHero({
    this.superhero,
  });

  List<Superhero> superhero;

  factory SuperHero.fromJson(Map<String, dynamic> json) => SuperHero(
        superhero: json["superhero"] == null
            ? null
            : List<Superhero>.from(
                json["superhero"].map((x) => Superhero.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "superhero": superhero == null
            ? null
            : List<dynamic>.from(superhero.map((x) => x.toJson())),
      };
}

class Superhero {
  Superhero({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });

  int id;
  String name;
  String slug;
  Powerstats powerstats;
  Appearance appearance;
  Biography biography;
  Work work;
  Connections connections;
  Images images;

  factory Superhero.fromJson(Map<String, dynamic> json) => Superhero(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
        powerstats: json["powerstats"] == null
            ? null
            : Powerstats.fromJson(json["powerstats"]),
        appearance: json["appearance"] == null
            ? null
            : Appearance.fromJson(json["appearance"]),
        biography: json["biography"] == null
            ? null
            : Biography.fromJson(json["biography"]),
        work: json["work"] == null ? null : Work.fromJson(json["work"]),
        connections: json["connections"] == null
            ? null
            : Connections.fromJson(json["connections"]),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
        "powerstats": powerstats == null ? null : powerstats.toJson(),
        "appearance": appearance == null ? null : appearance.toJson(),
        "biography": biography == null ? null : biography.toJson(),
        "work": work == null ? null : work.toJson(),
        "connections": connections == null ? null : connections.toJson(),
        "images": images == null ? null : images.toJson(),
      };
}

class Appearance {
  Appearance({
    this.gender,
    this.race,
    this.height,
    this.weight,
    this.eyeColor,
    this.hairColor,
  });

  String gender;
  String race;
  List<String> height;
  List<String> weight;
  String eyeColor;
  String hairColor;

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: json["gender"] == null ? null : json["gender"],
        race: json["race"] == null ? null : json["race"],
        height: json["height"] == null
            ? null
            : List<String>.from(json["height"].map((x) => x)),
        weight: json["weight"] == null
            ? null
            : List<String>.from(json["weight"].map((x) => x)),
        eyeColor: json["eyeColor"] == null ? null : json["eyeColor"],
        hairColor: json["hairColor"] == null ? null : json["hairColor"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender == null ? null : gender,
        "race": race == null ? null : race,
        "height":
            height == null ? null : List<dynamic>.from(height.map((x) => x)),
        "weight":
            weight == null ? null : List<dynamic>.from(weight.map((x) => x)),
        "eyeColor": eyeColor == null ? null : eyeColor,
        "hairColor": hairColor == null ? null : hairColor,
      };
}

class Biography {
  Biography({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  String fullName;
  String alterEgos;
  List<String> aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  String alignment;

  factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["fullName"] == null ? null : json["fullName"],
        alterEgos: json["alterEgos"] == null ? null : json["alterEgos"],
        aliases: json["aliases"] == null
            ? null
            : List<String>.from(json["aliases"].map((x) => x)),
        placeOfBirth:
            json["placeOfBirth"] == null ? null : json["placeOfBirth"],
        firstAppearance:
            json["firstAppearance"] == null ? null : json["firstAppearance"],
        publisher: json["publisher"] == null ? null : json["publisher"],
        alignment: json["alignment"] == null ? null : json["alignment"],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName == null ? null : fullName,
        "alterEgos": alterEgos == null ? null : alterEgos,
        "aliases":
            aliases == null ? null : List<dynamic>.from(aliases.map((x) => x)),
        "placeOfBirth": placeOfBirth == null ? null : placeOfBirth,
        "firstAppearance": firstAppearance == null ? null : firstAppearance,
        "publisher": publisher == null ? null : publisher,
        "alignment": alignment == null ? null : alignment,
      };
}

class Connections {
  Connections({
    this.groupAffiliation,
    this.relatives,
  });

  String groupAffiliation;
  String relatives;

  factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation:
            json["groupAffiliation"] == null ? null : json["groupAffiliation"],
        relatives: json["relatives"] == null ? null : json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "groupAffiliation": groupAffiliation == null ? null : groupAffiliation,
        "relatives": relatives == null ? null : relatives,
      };
}

class Images {
  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  String xs;
  String sm;
  String md;
  String lg;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        xs: json["xs"] == null ? null : json["xs"],
        sm: json["sm"] == null ? null : json["sm"],
        md: json["md"] == null ? null : json["md"],
        lg: json["lg"] == null ? null : json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "xs": xs == null ? null : xs,
        "sm": sm == null ? null : sm,
        "md": md == null ? null : md,
        "lg": lg == null ? null : lg,
      };
}

class Powerstats {
  Powerstats({
    this.intelligence,
    this.strength,
    this.speed,
    this.durability,
    this.power,
    this.combat,
  });

  int intelligence;
  int strength;
  int speed;
  int durability;
  int power;
  int combat;

  factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence:
            json["intelligence"] == null ? null : json["intelligence"],
        strength: json["strength"] == null ? null : json["strength"],
        speed: json["speed"] == null ? null : json["speed"],
        durability: json["durability"] == null ? null : json["durability"],
        power: json["power"] == null ? null : json["power"],
        combat: json["combat"] == null ? null : json["combat"],
      );

  Map<String, dynamic> toJson() => {
        "intelligence": intelligence == null ? null : intelligence,
        "strength": strength == null ? null : strength,
        "speed": speed == null ? null : speed,
        "durability": durability == null ? null : durability,
        "power": power == null ? null : power,
        "combat": combat == null ? null : combat,
      };
}

class Work {
  Work({
    this.occupation,
    this.base,
  });

  String occupation;
  String base;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"] == null ? null : json["occupation"],
        base: json["base"] == null ? null : json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation == null ? null : occupation,
        "base": base == null ? null : base,
      };
}
