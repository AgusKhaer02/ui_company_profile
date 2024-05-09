class ListBerita {
  ListBerita({
      String? kategori, 
      List<Data>? data, 
      String? message, 
      num? error,}){
    _kategori = kategori;
    _data = data;
    _message = message;
    _error = error;
}

  ListBerita.fromJson(dynamic json) {
    _kategori = json['kategori'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _message = json['message'];
    _error = json['error'];
  }
  String? _kategori;
  List<Data>? _data;
  String? _message;
  num? _error;

  String? get kategori => _kategori;
  List<Data>? get data => _data;
  String? get message => _message;
  num? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kategori'] = _kategori;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    map['error'] = _error;
    return map;
  }

}

class Data {
  Data({
      String? id, 
      String? jdlNews, 
      String? postOn, 
      dynamic namaKategori, 
      String? fotoNews, 
      String? judulSeo,}){
    _id = id;
    _jdlNews = jdlNews;
    _postOn = postOn;
    _namaKategori = namaKategori;
    _fotoNews = fotoNews;
    _judulSeo = judulSeo;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _jdlNews = json['jdl_news'];
    _postOn = json['post_on'];
    _namaKategori = json['nama_kategori'];
    _fotoNews = json['foto_news'];
    _judulSeo = json['judul_seo'];
  }
  String? _id;
  String? _jdlNews;
  String? _postOn;
  dynamic _namaKategori;
  String? _fotoNews;
  String? _judulSeo;

  String? get id => _id;
  String? get jdlNews => _jdlNews;
  String? get postOn => _postOn;
  dynamic get namaKategori => _namaKategori;
  String? get fotoNews => _fotoNews;
  String? get judulSeo => _judulSeo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['jdl_news'] = _jdlNews;
    map['post_on'] = _postOn;
    map['nama_kategori'] = _namaKategori;
    map['foto_news'] = _fotoNews;
    map['judul_seo'] = _judulSeo;
    return map;
  }

}