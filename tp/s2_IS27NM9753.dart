
// Consigne 1 : la classe, avec constructeur à paramètres nommés
class Etudiant {
  final String nom;
  final String matricule;
  final String? telephone;   // le ? autorise null (optionnel)
  final List<double> notes;

  Etudiant({
    required this.nom,
    required this.matricule,
    this.telephone,
    this.notes = const [],   // liste vide par défaut
  });

  // Consigne 2 : getter moyenne (0 si aucune note)
  double get moyenne =>
      notes.isEmpty ? 0 : notes.reduce((a, b) => a + b) / notes.length;
}

// Consigne 3 : admis si la moyenne atteint le seuil (10 par défaut)
bool estAdmis(Etudiant e, {double seuil = 10}) => e.moyenne >= seuil;

void main() {
  // Consigne 4 : 4 étudiants, un sans téléphone (Koffi), un sans note (Yao)
  final etudiants = [
    Etudiant(nom: 'Awa', matricule: 'M001', telephone: '0700000001', notes: [12, 14]),
    Etudiant(nom: 'Koffi', matricule: 'M002', notes: [8, 9.5]),
    Etudiant(nom: 'Mariam', matricule: 'M003', telephone: '0700000002', notes: [15, 16, 13.5]),
    Etudiant(nom: 'Yao', matricule: 'M004', telephone: '0700000003'),
  ];

  for (final e in etudiants) {
    final statut = estAdmis(e) ? 'Admis' : 'Ajourné';
    final tel = e.telephone ?? 'Non renseigné';
    print('${e.nom} – ${e.moyenne.toStringAsFixed(2)} – $statut – Tél : $tel');
  }

  // Consigne 5 : noms des admis, triés par moyenne décroissante
  final admis = etudiants.where((e) => estAdmis(e)).toList()
    ..sort((a, b) => b.moyenne.compareTo(a.moyenne));
  print(admis.map((e) => e.nom).join(', '));
}