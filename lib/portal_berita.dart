import 'package:company_profile/detail_berita.dart';
import 'package:company_profile/model/list_berita.dart';
import 'package:company_profile/repository/berita_repository.dart';
import 'package:flutter/material.dart';


class PortalBeritaScreen extends StatefulWidget {
  const PortalBeritaScreen({super.key});

  @override
  State<PortalBeritaScreen> createState() => _PortalBeritaScreenState();
}

class _PortalBeritaScreenState extends State<PortalBeritaScreen> {
  List<Data> listData = [];

  getData() {
    BeritaRepository.getListBerita().then((value) {
      // jika proses await selesai dan mengembalikan datanya
      // maka masuk ke dalam proses then()

      setState(() {
        listData = value.data!;
      });
    }).catchError((error) {
      print("ERROR : " + error);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                listData[index].fotoNews!,
                height: 100,
                width: 100,
              ),
            ),
            title: Text(
              listData[index].jdlNews!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme.bodyLarge,
            ),
            subtitle: Text(
              listData[index].postOn!,
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailBeritaScreen(idBerita: listData[index].id!,)));
            },
          );
        },
    );
  }
}
