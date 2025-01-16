/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

EphemeralKeyModel ephemeralKeyFromJson(String str) => EphemeralKeyModel.fromJson(json.decode(str));

String ephemeralKeyToJson(EphemeralKeyModel data) => json.encode(data.toJson());

class EphemeralKeyModel {
    EphemeralKeyModel({
        required this.associatedObjects,
        required this.expires,
        required this.livemode,
        required this.created,
        required this.id,
        required this.secret,
        required this.object,
    });

    List<AssociatedObject> associatedObjects;
    int expires;
    bool livemode;
    int created;
    String id;
    String secret;
    String object;

    factory EphemeralKeyModel.fromJson(Map<dynamic, dynamic> json) => EphemeralKeyModel(
        associatedObjects: List<AssociatedObject>.from(json["associated_objects"].map((x) => AssociatedObject.fromJson(x))),
        expires: json["expires"],
        livemode: json["livemode"],
        created: json["created"],
        id: json["id"],
        secret: json["secret"],
        object: json["object"],
    );

    Map<dynamic, dynamic> toJson() => {
        "associated_objects": List<dynamic>.from(associatedObjects.map((x) => x.toJson())),
        "expires": expires,
        "livemode": livemode,
        "created": created,
        "id": id,
        "secret": secret,
        "object": object,
    };
}

class AssociatedObject {
    AssociatedObject({
        required this.id,
        required this.type,
    });

    String id;
    String type;

    factory AssociatedObject.fromJson(Map<dynamic, dynamic> json) => AssociatedObject(
        id: json["id"],
        type: json["type"],
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "type": type,
    };
}
