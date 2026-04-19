class BookModel {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo: json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'])
          : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
      searchInfo: json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo?.toJson(),
      'saleInfo': saleInfo?.toJson(),
      'accessInfo': accessInfo?.toJson(),
      'searchInfo': searchInfo?.toJson(),
    };
  }
}

class VolumeInfo {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final num? averageRating;
  final int? ratingsCount;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      subtitle: json['subtitle'],
      authors: json['authors'] != null
          ? List<String>.from(json['authors'])
          : [],
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List)
          .map((e) => IndustryIdentifier.fromJson(e))
          .toList()
          : [],
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: json['categories'] != null
          ? List<String>.from(json['categories'])
          : [],
      averageRating: json['averageRating'],
      ratingsCount: json['ratingsCount'],
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'authors': authors,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'description': description,
      'industryIdentifiers':
      industryIdentifiers?.map((e) => e.toJson()).toList(),
      'readingModes': readingModes?.toJson(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary?.toJson(),
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}

class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'identifier': identifier,
    };
  }
}

class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'image': image,
    };
  }
}

class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }
}

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
    };
  }
}

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final EpubInfo? epub;
  final PdfInfo? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: json['epub'] != null ? EpubInfo.fromJson(json['epub']) : null,
      pdf: json['pdf'] != null ? PdfInfo.fromJson(json['pdf']) : null,
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'epub': epub?.toJson(),
      'pdf': pdf?.toJson(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }
}

class EpubInfo {
  final bool? isAvailable;

  EpubInfo({
    this.isAvailable,
  });

  factory EpubInfo.fromJson(Map<String, dynamic> json) {
    return EpubInfo(
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
    };
  }
}

class PdfInfo {
  final bool? isAvailable;
  final String? acsTokenLink;

  PdfInfo({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory PdfInfo.fromJson(Map<String, dynamic> json) {
    return PdfInfo(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }
}

class SearchInfo {
  final String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      textSnippet: json['textSnippet'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'textSnippet': textSnippet,
    };
  }
}