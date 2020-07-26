class HottestModel {
  final int id;
  final String photo;
  final String title;
  final String price;
  HottestModel({this.title, this.id, this.photo, this.price});
}

List<HottestModel> listHottest = [
  HottestModel(
      id: 1,
      photo: "assets/images/obat.jpg",
      title: "Obat perjuangan masa muda untuk kehidupan yang lebih lama",
      price: "100"),
  HottestModel(
      id: 1,
      photo: "assets/images/obat1.jpg",
      title: "Obat untuk asam murat",
      price: "120"),
  HottestModel(
      id: 1,
      photo: "assets/images/obat2.jpg",
      title: "Obat terluka perasaan",
      price: "1000"),
];

class ApotekModel {
  final int id;
  final String photo;
  final String title;
  final String level;
  final String rating;
  final int subs;
  final int visits;

  ApotekModel(
      {this.id,
      this.photo,
      this.title,
      this.level,
      this.rating,
      this.subs,
      this.visits});
}

List<ApotekModel> listApotek = [
  ApotekModel(
      id: 1,
      level: "Level 3 first Class",
      photo: "assets/images/apotek1.jpg",
      rating: "4.7",
      subs: 19003,
      title: "Yamei Apoteker Sumbawa",
      visits: 89300),
  ApotekModel(
      id: 1,
      level: "Level 2 Grade A",
      photo: "assets/images/apotek2.jpg",
      rating: "4.3",
      subs: 14500,
      title: "Angke Hospital Apotek",
      visits: 45020),
  ApotekModel(
      id: 1,
      level: "Level 4 Bussiness Class",
      photo: "assets/images/apotek3.jpg",
      rating: "4.9",
      subs: 43020,
      title: "Apotek Viviet Ananda",
      visits: 120900),
];

class HospitalModel {
  final int id;
  final String photo;
  final String title;
  final String level;
  final String rating;

  HospitalModel({this.id, this.photo, this.title, this.level, this.rating});
}

List<HospitalModel> listHospital = [
  HospitalModel(id: 1, title: "Rumah Sakit Umum Besar", rating: "5",level: "Level 3 First Class", photo: "assets/images/hospital.jpg"),
  HospitalModel(id: 1, title: "Rumah Sakit Manambai", rating: "5",level: "Level 4 First Class", photo: "assets/images/hospital2.jpg"),
  HospitalModel(id: 1, title: "Rumah Sakit Sumbawa", rating: "5",level: "Level 5 First Class", photo: "assets/images/hospital3.jpg"),
];
