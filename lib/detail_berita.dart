import 'package:company_profile/model/detail_berita.dart';
import 'package:company_profile/repository/berita_repository.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailBeritaScreen extends StatefulWidget {
  const DetailBeritaScreen({super.key, required this.idBerita});
  final String idBerita;
  @override
  State<DetailBeritaScreen> createState() => _DetailBeritaScreenState();
}

class _DetailBeritaScreenState extends State<DetailBeritaScreen> {

  DetailBerita detailData = DetailBerita();

  getDetail() {
    BeritaRepository.getDetailBerita(widget.idBerita).then((value) {
      setState(() {
        detailData = value;
      });
    });
  }

  @override
  void initState() {
    getDetail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (detailData.jdlNews != null)
            ? Text(detailData.jdlNews!)
            : Shimmer.fromColors(
          baseColor: Colors.grey.shade500,
          highlightColor: Colors.grey.shade300,
          child: Container(
            color: Colors.red,
            width: 150,
            height: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: (detailData.fotoNews != null)
                    ? Image.network(
                  detailData.fotoNews!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 200,
                )
                    : Shimmer.fromColors(
                  baseColor: Colors.grey.shade500,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              (detailData.jdlNews != null)
                  ? Text(
                detailData.jdlNews!,
                style: Theme.of(context).textTheme.headlineMedium,
              )
                  : Shimmer.fromColors(
                baseColor: Colors.grey.shade500,
                highlightColor: Colors.grey.shade300,
                child: Container(
                  color: Colors.red,
                  width: 150,
                  height: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              (detailData.postOn != null)
                  ? RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.calendar_month, size: 20),
                    ),
                    TextSpan(
                        text: detailData.postOn!,
                        style:
                        TextStyle(color: Colors.black, fontSize: 16))
                  ],
                ),
              )
                  : Shimmer.fromColors(
                baseColor: Colors.grey.shade500,
                highlightColor: Colors.grey.shade300,
                child: Container(
                  color: Colors.red,
                  width: 150,
                  height: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              (detailData.ketNews != null)
                  ? Text(detailData.ketNews!)
                  : Shimmer.fromColors(
                baseColor: Colors.grey.shade500,
                highlightColor: Colors.grey.shade300,
                child: Container(
                  color: Colors.red,
                  width: 150,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
