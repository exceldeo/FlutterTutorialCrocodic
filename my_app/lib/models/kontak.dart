class KontakModel {
  static const tblKontak = 'kontak';
  static const colId = 'id';
  static const colNama = 'nama';
  static const colnoHp = 'noHp';

  int id;
  String nama;
  String noHp;

  KontakModel({this.id, this.nama, this.noHp});

  KontakModel.fromMap(Map<String, dynamic> map) {
    id = map[colId];
    nama = map[colNama];
    noHp = map[colnoHp];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{colNama: nama, colnoHp: noHp};
    if (id != null) {
      map[colId] = id;
    }
    return map;
  }
}
