HEAD
﻿Lien du diagramme de fonctionnement:  
https://www.figma.com/board/uYIr3XWPNM5JVxH2f1oiKZ/Diagramme-AIDoctor?node-id=0-1&t=3cdD9bmuNCmQqc5M-1

📘 Plan de Travail – Application AIDoctor (EXAMEN FLUTTER NTIC20)
1. Titre du projet
AIDoctor – Application mobile d’assistance médicale intelligente

2. Contexte et problématique
Dans de nombreux pays, notamment dans les zones rurales ou à faible accès aux soins, l’accès à un diagnostic médical rapide et fiable est un réel défi. Les patients attendent souvent longtemps avant de consulter un professionnel de santé, ce qui aggrave les symptômes ou retarde les traitements. Il devient donc essentiel de proposer une solution numérique capable de fournir une première aide médicale ou orientation.

3. Objectifs du projet
    • Fournir une application mobile intuitive capable de détecter les symptômes de base via un questionnaire intelligent.
    • Offrir des conseils médicaux généraux ou une orientation vers un professionnel de santé.
    • Proposer un système de suivi simple des symptômes et des conseils santé personnalisés.
    • Utiliser des technologies modernes pour simuler un assistant médical intelligent.

4. Public cible
    • Population en zone rurale ou ayant un accès limité aux soins médicaux.
    • Étudiants, travailleurs et personnes souhaitant un accès rapide à des conseils de santé.
    • Familles voulant surveiller leur état de santé au quotidien.

5. Fonctionnalités principales
    • ✔️ Diagnostic basique via un formulaire intelligent (symptômes, durée, antécédents).
    • ✔️ Conseils personnalisés en fonction des symptômes (repos, hydratation, consultation recommandée…).
    • ✔️ Historique de santé de l’utilisateur (symptômes précédents, conseils reçus…).
    • ✔️ Notifications de suivi et rappels.
    • ✔️ Intégration d'une base de données médicale de base.
    • ✔️ Chatbot (optionnel) pour simuler une conversation avec un "assistant médical".

6. Technologies utilisées
Aspect
Technologie prévue
Framework
Flutter
Backend
Firebase (Authentication + Firestore)
Base de données locale
SQLite
API
MedAPI (ou autre base médicale open-source)
Notifications
Firebase Cloud Messaging
Intelligence
Arbre de décision ou petit modèle ML avec TensorFlow Lite (version avancée)

7. Étapes du développement
Étape
Description
Durée estimée
📌 1. Analyse et étude de l'existant
Recherche sur les apps médicales similaires (Babylon Health, Ada, etc.)
1 semaine
📌 2. Rédaction des spécifications fonctionnelles
Définir les fonctionnalités exactes, l’interface utilisateur, la base de données
1 semaine
📌 3. Conception UI/UX
Prototypage de l’application avec Figma ou FlutterFlow
1 semaine
📌 4. Développement technique
Codage Flutter + Intégration Firebase et base de données
3 à 4 semaines
📌 5. Tests
Tests unitaires, fonctionnels et utilisateurs (sur Android/iOS)
1 semaine
📌 6. Rapport final et présentation
Rédaction du rapport, création de la présentation PowerPoint
1 semaine

8. Livrables attendus
    • Code source complet (Flutter)
    • Maquette UI/UX
    • Rapport technique

9. Valeur ajoutée et innovation
    • Une approche accessible à la santé digitale, même dans les zones à faible connectivité.
    • Utilisation d’intelligence artificielle simple pour orienter les patients.
    • Interface simple, multilingue (Français, Malagasy) pour un accès large.

10. Perspectives d’évolution
    • Intégration de la géolocalisation pour recommander des centres de santé proches.
    • Consultation médicale vidéo ou téléphonique intégrée.
    • Développement d’un vrai moteur d’IA avec NLP (Natural Language Processing).


# aidoc_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
ab3632b (firebase and symptom_checkers modified)
