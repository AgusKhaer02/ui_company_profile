class DetailBerita {
  DetailBerita({
      String? id, 
      String? jdlNews, 
      String? postOn, 
      String? namaKategori, 
      String? fotoNews, 
      String? judulSeo, 
      String? ketNews, 
      String? message, 
      num? error,}){
    _id = id;
    _jdlNews = jdlNews;
    _postOn = postOn;
    _namaKategori = namaKategori;
    _fotoNews = fotoNews;
    _judulSeo = judulSeo;
    _ketNews = ketNews;
    _message = message;
    _error = error;
}

  DetailBerita.fromJson(dynamic json) {
    _id = json['id'];
    _jdlNews = json['jdl_news'];
    _postOn = json['post_on'];
    _namaKategori = json['nama_kategori'];
    _fotoNews = json['foto_news'];
    _judulSeo = json['judul_seo'];
    _ketNews = json['ket_news'];
    _message = json['message'];
    _error = json['error'];
  }
  String? _id;
  String? _jdlNews;
  String? _postOn;
  String? _namaKategori;
  String? _fotoNews;
  String? _judulSeo;
  String? _ketNews;
  String? _message;
  num? _error;

  String? get id => _id;
  String? get jdlNews => _jdlNews;
  String? get postOn => _postOn;
  String? get namaKategori => _namaKategori;
  String? get fotoNews => _fotoNews;
  String? get judulSeo => _judulSeo;
  String? get ketNews => _ketNews;
  String? get message => _message;
  num? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['jdl_news'] = _jdlNews;
    map['post_on'] = _postOn;
    map['nama_kategori'] = _namaKategori;
    map['foto_news'] = _fotoNews;
    map['judul_seo'] = _judulSeo;
    map['ket_news'] = _ketNews;
    map['message'] = _message;
    map['error'] = _error;
    return map;
  }

}