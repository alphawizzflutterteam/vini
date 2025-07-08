import 'dart:convert';
import 'package:vini/Helper/widgets.dart';
import 'package:vini/Model/SingleSellerModal.dart';
import 'package:vini/Model/UpdateUserModels.dart';
import 'package:vini/Model/UserDetails.dart';
import 'package:vini/Provider/UserProvider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../Session.dart';
import '../String.dart';

Future<UserDetails?> userDetails() async {
  var header = headers;
  var request = http.MultipartRequest('POST', getUserDetailsApi);
  request.fields.addAll({'user_id': '$CUR_USERID'});

  request.headers.addAll(header);
  print(request);
  print(request.fields);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    print(str);
    return UserDetails.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<UpdateUserModels?> uploadImage(param, image) async {
  var header = headers;
  var request = http.MultipartRequest('POST', updateUserApi);
  request.fields.addAll({'user_id': '$CUR_USERID'});
  request.files.add(await http.MultipartFile.fromPath('$param', '$image'));
  request.headers.addAll(header);

  http.StreamedResponse response = await request.send();
  print(request.fields);
  print(request.files[0].field);
  print(response.statusCode);
  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    return UpdateUserModels.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<UpdateUserModels?> updateUserDetails(userName, mobileNumber, email, dob,
    {required context}) async {
  var header = headers;
  var request = http.MultipartRequest('POST', updateUserApi);
  request.fields.addAll({
    'user_id': '$CUR_USERID',
    'username': '$userName',
    'mobile': '$mobileNumber',
    'email': '$email',
    'dob': '$dob',
  });
  print("Updateprofile______________${request.fields}");
  request.headers.addAll(header);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final str = await response.stream.bytesToString();
    final data = json.decode(str);
    print("Update User Data: $data");
    final model = UpdateUserModels.fromJson(data);
    if (model.error == false) {
      Provider.of<UserProvider>(context, listen: false).setName(userName);
      Provider.of<UserProvider>(context, listen: false).setEmail(email);
      Provider.of<UserProvider>(context, listen: false).setMobile(mobileNumber);
    }

    return UpdateUserModels.fromJson(json.decode(str));
  } else {
    return null;
  }
}

Future<SingleSellerModal?> singleSeller(sellerId) async {
  var header = headers;
  var request = http.MultipartRequest('POST', getSellerApi);
  request.fields.addAll({'seller_id': sellerId});

  request.headers.addAll(header);
  print("API Seller Id: $sellerId");
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final data = await response.stream.bytesToString();
    return SingleSellerModal.fromJson(json.decode(data));
  } else {
    return null;
  }
}

checkOnOff(sellerId) async {
  SingleSellerModal? modal = await singleSeller(sellerId);
  if (modal!.error == false) {
    if (modal.data![0].openCloseStatus == '1') {
      print(
          "CHEK ON OFF STATUS ========================> ${modal.data![0].openCloseStatus}");
      return true;
    } else {
      return false;
    }
  } else {
    print("Error");
  }
}

Future<String> deleteAccount(userId) async {
  var header = headers;
  var request = http.MultipartRequest('POST', getDeleteAccountApi);
  request.fields.addAll({'user_id': userId});
  request.headers.addAll(header);
  http.StreamedResponse response = await request.send();
  print('response  $response');
  if (response.statusCode == 200) {
    final data = await response.stream.bytesToString();
    return json.decode(data)['message'];
  } else {
    return 'Unable to delete account';
  }
}
