class Comarca {

  late String nom; // Declarem el nom, i indiquem que l'inicialitzarem després
  String? imatge; // La url a la imatge és nul·lable

  /*
  Constructor amb arguments amb nom:
   - nom és obligatori, i
   - imatge opcional.
  */
  Comarca({
  required this.nom,
  this.imatge,
  });
}
