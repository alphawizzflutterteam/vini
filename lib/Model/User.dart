import 'package:vini/Helper/String.dart';
import 'package:intl/intl.dart';

class User {
  String? username,
      userProfile,
      email,
      mobile,
      address,
      dob,
      city,
      area,
      tahsil,
      street,
      password,
      pincode,
      fcmId,
      latitude,
      longitude,
      userId,
      name,
      deliveryCharge,
      freeAmt;

  List<String>? imgList;
  String? id, date, comment, rating;

  String? type,
      altMob,
      landmark,
      areaId,
      stateId,
      tahsilId,
      cityId,
      isDefault,
      state,
      cityname,
      country;

  User(
      {this.id,
      this.username,
      this.userProfile,
      this.date,
      this.rating,
      this.comment,
      this.email,
      this.mobile,
      this.address,
      this.tahsil,
      this.dob,
      this.city,
      this.area,
      this.street,
      this.password,
      this.pincode,
      this.fcmId,
      this.latitude,
      this.longitude,
      this.userId,
      this.name,
      this.type,
      this.altMob,
      this.landmark,
      this.areaId,
      this.cityId,
      this.imgList,
      this.isDefault,
      this.state,
      this.cityname,
      this.stateId,
      this.deliveryCharge,
      this.tahsilId,
      this.freeAmt,
      this.country});

  factory User.forReview(Map<String, dynamic> parsedJson) {
    String date = parsedJson['data_added'];
    var allSttus = parsedJson['images'];
    List<String> item = [];

    for (String i in allSttus) item.add(i);

    date = DateFormat('dd-MM-yyyy').format(DateTime.parse(date));

    return new User(
      id: parsedJson[ID],
      date: date,
      rating: parsedJson[RATING],
      comment: parsedJson[COMMENT],
      imgList: item,
      username: parsedJson[USER_NAME],
      userProfile: parsedJson["user_profile"],
    );
  }

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return new User(
      id: parsedJson[ID],
      username: parsedJson[USERNAME],
      email: parsedJson[EMAIL],
      mobile: parsedJson[MOBILE],
      address: parsedJson[ADDRESS],
      tahsil: parsedJson["tahsil"],
      city: parsedJson[CITY],
      area: parsedJson[AREA],
      pincode: parsedJson[PINCODE],
      fcmId: parsedJson[FCM_ID],
      latitude: parsedJson[LATITUDE],
      longitude: parsedJson[LONGITUDE],
      userId: parsedJson[USER_ID],
      name: parsedJson[NAME],
    );
  }

  factory User.fromAddress(Map<String, dynamic> parsedJson) {
    return new User(
        id: parsedJson[ID],
        mobile: parsedJson[MOBILE],
        address: parsedJson[ADDRESS],
        tahsil: parsedJson["tahsil"],
        altMob: parsedJson[ALT_MOBNO],
        cityId: parsedJson[CITY_ID],
        areaId: parsedJson[AREA_ID],
        stateId: parsedJson['state_id'],
        tahsilId: parsedJson['tahsilId'],
        area: parsedJson[AREA],
        city: parsedJson[CITY],
        landmark: parsedJson[LANDMARK],
        state: parsedJson[STATE_ID],
        cityname: parsedJson["city_name"],
        pincode: parsedJson[PINCODE],
        country: parsedJson[COUNTRY],
        latitude: parsedJson[LATITUDE],
        longitude: parsedJson[LONGITUDE],
        userId: parsedJson[USER_ID],
        name: parsedJson[NAME],
        type: parsedJson[TYPE],
        deliveryCharge: parsedJson[DEL_CHARGES],
        freeAmt: parsedJson[FREE_AMT],
        isDefault: parsedJson[ISDEFAULT]);
  }
}

class imgModel {
  int? index;
  String? img;

  imgModel({this.index, this.img});
  factory imgModel.fromJson(int i, String image) {
    return new imgModel(index: i, img: image);
  }
}
