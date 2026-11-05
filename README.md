# hello_ispa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
1.	Pourquoi le compteur garde-t-il sa valeur après un hot reload, mais pas après un hot restart ?

car le hot reload injecte le nouveau code dans l'apllication en cours, sans redemarrer.

2.	Pourquoi HelloIspaApp est-il un StatelessWidget alors que AccueilPage est un StatefulWidget ?

HelloIspaApp ne contient aucune donnée qui change : il fournit seulement le thème et la page d'accueil. AccueilPage doit mémoriser et modifier le nombre de présents, il lui faut donc un état, ce que permet un StatefulWidget.

3.	Que se passe-t-il si vous écrivez _presents++ sans setState() ? Testez, puis expliquez.

Grâce à setState() La valeur de la variable augmente, mais l'écran ne se redessine pas et le texte affiché ne change pas.