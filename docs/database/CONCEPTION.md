1. Pourquoi stocker le prix unitaire dans la table des lignes de commande plutôt que d'utiliser directement le prix du produit ?

Le stockage du prix unitaire directement dans la ligne de commande est obligé pour bloquer la valeur de la vente au moment de l'achat. Ca garantit que toute modification future du prix catalogue dans la table des produits n'impactera pas l'historique des commandes passées ni la comptabilité.

2. Quelle stratégie avez-vous choisie pour gérer les suppressions ?

Les clients et les catégories sont protégés par une restriction (ON DELETE RESTRICT) pour éviter de laisser des commandes ou des produits sans relation. En revanche, les lignes de commande sont supprimées en cascade (ON DELETE CASCADE) si la commande principale est effacée. Enfin, les produits ne sont jamais supprimés physiquement s'ils ont été vendus, mais simplement désactivés via un champ booléen, ce qui garde l'historique des ventes.

3. Comment gérez-vous les stocks ?

La gestion des stocks repose sur la sécurité des données. Au niveau de la base, une contrainte de vérification (CHECK stock >= 0) empêche strictement toute transaction qui rendrait le stock négatif. La décrémentation s'effectue dès la validation de la commande par le client, et non au paiement, afin de réserver immédiatement les articles et d'éviter que deux clients ne valident le même dernier article simultanément.

4. Avez-vous prévu des index ? Lesquels et pourquoi ?

J'en ai ajoutés spécifiquement sur les clés étrangères, comme id_categorie dans la table produits et id_client dans la table commandes. J'ai fait ce choix pour optimiser les performances de lecture lors des requêtes les plus fréquentes, comme l'affichage du catalogue par catégorie ou la récupération de l'historique des achats d'un client.

5. Comment assurez-vous l'unicité du numéro de commande ?

J'utilise Postresql donc l'unicité est assurée automatiquement par le moteur de base de données grâce à l'utilisation du type SERIAL pour la clé primaire de la commande. Ce mécanisme garantit qu'il est impossible de générer deux identifiants identiques, sans avoir besoin de gestion complexe dans le code de l'application.

6. Quelles sont les extensions possibles de votre modèle ?

Le modèle actuel peut évoluer pour gérer des cas plus complexes. On pourrait par exemple extraire les adresses dans une table dédiée pour permettre au client d'en gérer plusieurs, ou ajouter une table d'historique pour suivre l'évolution des prix dans le temps. On pourrais aussi ajouter une table pour les avis clients.