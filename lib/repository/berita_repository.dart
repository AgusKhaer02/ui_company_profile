import 'dart:convert';


import 'package:company_profile/model/detail_berita.dart';
import 'package:company_profile/model/list_berita.dart';
import 'package:http/http.dart' as http;

final String BASE_URL = 'https://lauwba.com/webservices';

class BeritaRepository {

  static Future<ListBerita> getListBerita() async {
    String url = BASE_URL + "/get_latest_news";

    // melakukan request dengan method get
    // await = proses selanjutnya akan dijeda sampai proses request selesai
    final response = await http.get(Uri.parse(url));

    //cek jika status code 200, maka kembalikan data list berita
    if (response.statusCode == 200) {
      return ListBerita.fromJson(jsonDecode(response.body));
    }

    // jika tidak, maka lempar exception berupa pesan error
    throw "Unable to get List Berita";
  }

  static Future<DetailBerita> getDetailBerita(String idBerita) async {
    String url = BASE_URL + "/get_detail_news/$idBerita";

    // melakukan request dengan method get
    // await = proses selanjutnya akan dijeda sampai proses request selesai
    final response = await http.get(Uri.parse(url));

    print(response);
    //cek jika status code 200, maka kembalikan data list berita
    if (response.statusCode == 200) {
      return DetailBerita.fromJson(jsonDecode(response.body));
    }

    // jika tidak, maka lempar exception berupa pesan error
    throw "Unable to get Detail Berita";
  }
}