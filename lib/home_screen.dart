import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Company Profile',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
            IconButton(onPressed: () {}, icon: Icon(Icons.login)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: TabBarView(
          children: [
            HomeSubscreen(),
            Center(
              child: Text("Portal Berita"),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.newspaper),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeSubscreen extends StatelessWidget {
  String tentangDeskripsi =
      "adalah salah satu bentuk satuan pendidikan formal yang menyelenggarakan pendidikan kejuruan pada jenjang pendidikan menengah yang mempersiapkan peserta didik terutama untuk bekerja di bidang tertentu. Siswa dapat melanjutkan pendidikan SMK setelah menyelesaikan pendidikan di tingkat Sekolah Menengah Pertama atau sederajat.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Carousel
          FlutterCarousel(
            options: CarouselOptions(
              height: 200.0,
              showIndicator: true,
              autoPlay: true,
              enableInfiniteScroll: true,
              slideIndicator: CircularSlideIndicator(),
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://wallpapers.com/images/featured/school-btqdsrc8abryyar1.jpg",
                      height: 200,
                    ),
                  );
                },
              );
            }).toList(),
          ),

          // tentang sekolah
          Container(
            decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      "Tentang Sekolah",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Text(
                  tentangDeskripsi,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          //   list jurusan
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      "Jurusan Kami",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://smkn4kendari.sch.id/wp-content/uploads/2021/05/RPL-760x490-1.jpg",
                              height: 150,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Rekayasa Perangkat Lunak",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          //   list testimoni
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      "Apa Kata Mereka?",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (ctx, index) {
                      return Container(
                        width: 300,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/premium-photo/portrait-smiling-man_53419-449.jpg?size=338&ext=jpg&ga=GA1.1.1880011253.1699574400&semt=ais"),
                          ),
                          title: Text("Agus K K"),
                          subtitle: Text(
                            "Sekolahnya bagus, fasilitas OK, pengajarnya ramah, top deh",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
