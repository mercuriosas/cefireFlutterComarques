class Comarca {
  late String nom; // Declarem el nom, i indiquem que l'inicialitzarem després
  String? imatge; // La url a la imatge és nul·lable
  String? capital;
  String? poblacio;
  String? descripcio;
  String? latitud;
  String? longitud;

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
  }

  @override
  String toString() => '''\x1B[34mNom:\t\x1B[36m$nom\x1B[0m
\x1B[34mImatge:\t\x1B[36m$imatge\n\x1B[0m''';
}
