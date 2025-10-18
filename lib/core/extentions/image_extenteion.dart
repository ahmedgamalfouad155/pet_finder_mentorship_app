extension CatImageUrlExtension on String? {

  String get toCatImageUrl {
    if (this == null || this!.isEmpty) {
      return 'https://cdn2.thecatapi.com/images/default.jpg'; 
    }
    return 'https://cdn2.thecatapi.com/images/$this.jpg';
  }
}
