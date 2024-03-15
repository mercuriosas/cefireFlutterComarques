class Comarca {
  late String nom; // Declarem el nom, i indiquem que l'inicialitzarem després
  String? imatge; // La url a la imatge és nul·lable
  String? capital;
  String? poblacio;
  String? descripcio;
  double? latitud;
  double? longitud;

  /*
  Constructor amb arguments amb nom:
   - nom és obligatori, i
   - imatge opcional.
  */
  Comarca({
    required this.nom,
    this.imatge,
    this.capital,
    this.poblacio,
    this.descripcio,
    this.latitud,
    this.longitud,
  });

  /*
  Constructor amb nom a partir d'un diccionari.
  */

  Comarca.fromJSON(Map<String, dynamic> objecteJSON) {
    nom = objecteJSON["comarca"] ?? "";
    imatge = objecteJSON["img"] ?? "";
    capital = objecteJSON["capital"] ?? "";
    poblacio = objecteJSON["poblacio"] ?? "";
    descripcio = objecteJSON["desc"] ?? "";
    latitud = objecteJSON["latitud"] ?? "";
    longitud = objecteJSON["longitud"] ?? "";
  }

  @override
  String toString(){
    //Si capital té valor estem mostrant la info de la comarca
    if (capital != null){
      return '''\x1B[34mNom:\t\x1B[36m$nom\x1B[0m
\x1B[34mImatge:\t\x1B[36m$imatge\n\x1B[0m
\x1B[34mCapital:\t\x1B[36m$capital\n\x1B[0m
\x1B[34mPoblacio:\t\x1B[36m$poblacio\n\x1B[0m
\x1B[34mDescripcio:\t\x1B[36m$descripcio\n\x1B[0m
\x1B[34mLatitud:\t\x1B[36m$latitud\n\x1B[0m
\x1B[34mLongitud:\t\x1B[36m$longitud\n\x1B[0m''';
    }
    else{
      //Si no té valor, mostrarem només el nom de la comarca
      return '''$nom\x1B[0m''';
    }
  }
}
