import 'dart:ffi';

import 'package:dio/dio.dart';

import '../model/GameNews.dart';
import '../model/User.dart';

class GameNewsService {
  final String Emu = "http://10.0.2.2:3000";
  final String baseUrlApi = "http://192.168.0.123:3000/api";

  Future<List<GameNewsModel>> fetchDataNews() async {
    Response response = await Dio().get("$baseUrlApi/gamenews/all");
    List<GameNewsModel> comic =
        (response.data as List).map((v) => GameNewsModel.fromJSON(v)).toList();
    return comic;
  }

  Future<List<GameNewsModel>> fetchDataNewsType(String type) async {
    Response response = await Dio().get("$baseUrlApi/gamenews/type/$type");
    List<GameNewsModel> comic =
        (response.data as List).map((v) => GameNewsModel.fromJSON(v)).toList();
    return comic;
  }

  Future<List<UserModel>> fetchDataUser(int idUser) async {
    Response response = await Dio().get("$baseUrlApi/user/$idUser");
    List<UserModel> user =
        (response.data as List).map((v) => UserModel.fromJSON(v)).toList();
    return user;
  }
}
