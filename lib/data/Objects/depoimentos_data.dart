class DepoimentosData {
  final int? id;
  final String? type;
  final String? userName;
  final String? userImage;
  final String? userInfo;
  final String? userText;
  final String? videoImage;
  final String? videoUrl;
  final int? order;
  final int? status;
  final int? languageId;

  DepoimentosData({
    this.id,
    this.type,
    this.userName,
    this.userImage,
    this.userInfo,
    this.userText,
    this.videoImage,
    this.videoUrl,
    this.order,
    this.status,
    this.languageId,
  });

  factory DepoimentosData.fromJson(Map<String, dynamic> json) => DepoimentosData(
        id: json["id"] ?? 0,
        type: json["type"] ?? "",
        userName: json["userName"] ?? "",
        userImage: json["userImage"] ?? "",
        userInfo: json["userInfo"] ?? "",
        userText: json["userText"] ?? "",
        videoImage: json["videoImage"] ?? "",
        videoUrl: json["videoUrl"] ?? "",
        order: json["order"] ?? 0,
        status: json["status"] ?? 0,
        languageId: json["language_id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "userName": userName,
        "userImage": userImage,
        "userInfo": userInfo,
        "userText": userText,
        "videoImage": videoImage,
        "videoUrl": videoUrl,
        "order": order,
        "status": status,
        "language_id": languageId,
      };
}
