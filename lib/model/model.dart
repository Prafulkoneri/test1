// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.currentBookings,
    required this.packages,
  });

  CurrentBookings currentBookings;
  List<Package> packages;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        currentBookings: CurrentBookings.fromJson(json["current_bookings"]),
        packages: List<Package>.from(
            json["packages"].map((x) => Package.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "current_bookings": currentBookings.toJson(),
        "packages": List<dynamic>.from(packages.map((x) => x.toJson())),
      };
}

class CurrentBookings {
  CurrentBookings({
    required this.packageLabel,
    required this.fromDate,
    required this.fromTime,
    required this.toDate,
    required this.toTime,
  });

  String packageLabel;
  String fromDate;
  String fromTime;
  String toDate;
  String toTime;

  factory CurrentBookings.fromJson(Map<String, dynamic> json) =>
      CurrentBookings(
        packageLabel: json["package_label"],
        fromDate: json["from_date"],
        fromTime: json["from_time"],
        toDate: json["to_date"],
        toTime: json["to_time"],
      );

  Map<String, dynamic> toJson() => {
        "package_label": packageLabel,
        "from_date": fromDate,
        "from_time": fromTime,
        "to_date": toDate,
        "to_time": toTime,
      };
}

class Package {
  Package({
    required this.id,
    required this.packageName,
    required this.price,
    required this.description,
  });

  int id;
  String packageName;
  int price;
  String description;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json["id"],
        packageName: json["package_name"],
        price: json["price"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "package_name": packageName,
        "price": price,
        "description": description,
      };
}
