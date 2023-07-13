class Artikel {
  ListApi? listApi;
  String? author;
  String? source;

  Artikel({this.listApi, this.author, this.source});

  Artikel.fromJson(Map<String, dynamic> json) {
    listApi =
        json['listApi'] != null ? new ListApi.fromJson(json['listApi']) : null;
    author = json['author'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listApi != null) {
      data['listApi'] = this.listApi!.toJson();
    }
    data['author'] = this.author;
    data['source'] = this.source;
    return data;
  }
}

class ListApi {
  CNNNews? cNNNews;
  CNNNews? cNBCNews;
  CNNNews? republikaNews;
  CNNNews? tempoNews;
  AntaraNews? antaraNews;
  OkezoneNews? okezoneNews;
  OkezoneNews? bBCNews;
  KumparanNews? kumparanNews;
  KumparanNews? liputan6News;
  TribunNews? tribunNews;
  OkezoneNews? jawaPosNews;
  KumparanNews? vice;
  OkezoneNews? suaraNews;
  VOAIndonesia? vOAIndonesia;

  ListApi(
      {this.cNNNews,
      this.cNBCNews,
      this.republikaNews,
      this.tempoNews,
      this.antaraNews,
      this.okezoneNews,
      this.bBCNews,
      this.kumparanNews,
      this.liputan6News,
      this.tribunNews,
      this.jawaPosNews,
      this.vice,
      this.suaraNews,
      this.vOAIndonesia});

  ListApi.fromJson(Map<String, dynamic> json) {
    cNNNews = json['CNN News'] != null
        ? new CNNNews.fromJson(json['CNN News'])
        : null;
    cNBCNews = json['CNBC News'] != null
        ? new CNNNews.fromJson(json['CNBC News'])
        : null;
    republikaNews = json['Republika News'] != null
        ? new CNNNews.fromJson(json['Republika News'])
        : null;
    tempoNews = json['Tempo News'] != null
        ? new CNNNews.fromJson(json['Tempo News'])
        : null;
    antaraNews = json['Antara News'] != null
        ? new AntaraNews.fromJson(json['Antara News'])
        : null;
    okezoneNews = json['Okezone News'] != null
        ? new OkezoneNews.fromJson(json['Okezone News'])
        : null;
    bBCNews = json['BBC News'] != null
        ? new OkezoneNews.fromJson(json['BBC News'])
        : null;
    kumparanNews = json['Kumparan News'] != null
        ? new KumparanNews.fromJson(json['Kumparan News'])
        : null;
    liputan6News = json['Liputan 6 News'] != null
        ? new KumparanNews.fromJson(json['Liputan 6 News'])
        : null;
    tribunNews = json['Tribun News'] != null
        ? new TribunNews.fromJson(json['Tribun News'])
        : null;
    jawaPosNews = json['Jawa Pos News'] != null
        ? new OkezoneNews.fromJson(json['Jawa Pos News'])
        : null;
    vice =
        json['Vice'] != null ? new KumparanNews.fromJson(json['Vice']) : null;
    suaraNews = json['Suara News'] != null
        ? new OkezoneNews.fromJson(json['Suara News'])
        : null;
    vOAIndonesia = json['VOA Indonesia'] != null
        ? new VOAIndonesia.fromJson(json['VOA Indonesia'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cNNNews != null) {
      data['CNN News'] = this.cNNNews!.toJson();
    }
    if (this.cNBCNews != null) {
      data['CNBC News'] = this.cNBCNews!.toJson();
    }
    if (this.republikaNews != null) {
      data['Republika News'] = this.republikaNews!.toJson();
    }
    if (this.tempoNews != null) {
      data['Tempo News'] = this.tempoNews!.toJson();
    }
    if (this.antaraNews != null) {
      data['Antara News'] = this.antaraNews!.toJson();
    }
    if (this.okezoneNews != null) {
      data['Okezone News'] = this.okezoneNews!.toJson();
    }
    if (this.bBCNews != null) {
      data['BBC News'] = this.bBCNews!.toJson();
    }
    if (this.kumparanNews != null) {
      data['Kumparan News'] = this.kumparanNews!.toJson();
    }
    if (this.liputan6News != null) {
      data['Liputan 6 News'] = this.liputan6News!.toJson();
    }
    if (this.tribunNews != null) {
      data['Tribun News'] = this.tribunNews!.toJson();
    }
    if (this.jawaPosNews != null) {
      data['Jawa Pos News'] = this.jawaPosNews!.toJson();
    }
    if (this.vice != null) {
      data['Vice'] = this.vice!.toJson();
    }
    if (this.suaraNews != null) {
      data['Suara News'] = this.suaraNews!.toJson();
    }
    if (this.vOAIndonesia != null) {
      data['VOA Indonesia'] = this.vOAIndonesia!.toJson();
    }
    return data;
  }
}

class CNNNews {
  String? all;
  String? type;
  List<String>? listType;
  String? example;

  CNNNews({this.all, this.type, this.listType, this.example});

  CNNNews.fromJson(Map<String, dynamic> json) {
    all = json['all'];
    type = json['type'];
    listType = json['listType'].cast<String>();
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    data['type'] = this.type;
    data['listType'] = this.listType;
    data['example'] = this.example;
    return data;
  }
}

class AntaraNews {
  String? type;
  List<String>? listType;
  String? example;

  AntaraNews({this.type, this.listType, this.example});

  AntaraNews.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    listType = json['listType'].cast<String>();
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['listType'] = this.listType;
    data['example'] = this.example;
    return data;
  }
}

class OkezoneNews {
  String? all;
  List<String>? listType;
  String? example;

  OkezoneNews({this.all, this.listType, this.example});

  OkezoneNews.fromJson(Map<String, dynamic> json) {
    all = json['all'];
    listType = json['listType'].cast<String>();
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    data['listType'] = this.listType;
    data['example'] = this.example;
    return data;
  }
}

class KumparanNews {
  String? all;

  KumparanNews({this.all});

  KumparanNews.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class TribunNews {
  String? all;
  List<String>? zone;
  List<String>? listType;
  String? example;

  TribunNews({this.all, this.zone, this.listType, this.example});

  TribunNews.fromJson(Map<String, dynamic> json) {
    all = json['all'];
    zone = json['zone'].cast<String>();
    listType = json['listType'].cast<String>();
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    data['zone'] = this.zone;
    data['listType'] = this.listType;
    data['example'] = this.example;
    return data;
  }
}

class VOAIndonesia {
  String? all;
  String? example;

  VOAIndonesia({this.all, this.example});

  VOAIndonesia.fromJson(Map<String, dynamic> json) {
    all = json['all'];
    example = json['example'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    data['example'] = this.example;
    return data;
  }
}
