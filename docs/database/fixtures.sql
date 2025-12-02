-- Au minimum 5 catégories variées :
INSERT INTO categories (nom, description) VALUES
('High-Tech', 'Tout pour le numérique : ordinateurs, téléphones, accessoires.'),
('Vêtements', 'Mode homme et femme, collection été/hiver.'),
('Maison & Déco', 'Meubles, décoration et équipement pour la maison.'),
('Sport', 'Équipements sportifs et vêtements techniques.'),
('Livres', 'Romans, mangas, BD et livres techniques.');


-- Au minimum 25 produits répartis dans les catégories
-- Catégorie 1 : High-Tech
INSERT INTO produits (id_categorie, nom, description, prix, stock, image, disponible) VALUES
(1, 'Smartphone Galaxy X', 'Dernier modèle, écran OLED 6 pouces.', 899.99, 50, 'phone_x.jpg', TRUE),
(1, 'Laptop Pro 15', 'Processeur i7, 16Go RAM, 512Go SSD.', 1299.50, 20, 'laptop_pro.jpg', TRUE),
(1, 'Casque Audio Sans Fil', 'Réduction de bruit active, 30h autonomie.', 199.99, 100, 'headphone.jpg', TRUE),
(1, 'Souris Gamer', 'RGB, 16000 DPI, ergonomique.', 59.90, 45, 'mouse_gamer.jpg', TRUE),
(1, 'Clavier Mécanique', 'Switchs bleus, rétroéclairage.', 89.90, 30, 'keyboard.jpg', TRUE);

-- Catégorie 2 : Vêtements
INSERT INTO produits (id_categorie, nom, description, prix, stock, image, disponible) VALUES
(2, 'T-Shirt Coton Bio', '100% coton, couleur blanche.', 19.99, 200, 'tshirt_white.jpg', TRUE),
(2, 'Jean Slim Noir', 'Coupe ajustée, denim résistant.', 49.99, 80, 'jeans_black.jpg', TRUE),
(2, 'Sweat à capuche', 'Molletonné, très confortable.', 39.99, 60, 'hoodie.jpg', TRUE),
(2, 'Veste en cuir', 'Cuir véritable, style motard.', 149.99, 15, 'leather_jacket.jpg', TRUE),
(2, 'Chaussettes (Lot de 3)', 'Coton et élasthanne.', 9.99, 300, 'socks.jpg', TRUE);

-- Catégorie 3 : Maison & Déco
INSERT INTO produits (id_categorie, nom, description, prix, stock, image, disponible) VALUES
(3, 'Canapé 3 places', 'Tissu gris, convertible.', 499.00, 10, 'sofa.jpg', TRUE),
(3, 'Lampe de bureau', 'LED, intensité réglable.', 29.99, 50, 'lamp.jpg', TRUE),
(3, 'Tapis Salon', 'Style berbère, 160x200cm.', 89.99, 25, 'carpet.jpg', TRUE),
(3, 'Mug Céramique', 'Motif géométrique.', 12.50, 100, 'mug.jpg', TRUE),
(3, 'Plante artificielle', 'Bambou en pot, hauteur 1m.', 35.00, 40, 'plant.jpg', TRUE);

-- Catégorie 4 : Sport
INSERT INTO produits (id_categorie, nom, description, prix, stock, image, disponible) VALUES
(4, 'Tapis de Yoga', 'Antidérapant, épaisseur 5mm.', 24.99, 70, 'yoga_mat.jpg', TRUE),
(4, 'Haltères 5kg', 'Paire d haltères en néoprène.', 29.99, 40, 'dumbbells.jpg', TRUE),
(4, 'Ballon de Football', 'Taille 5, homologué match.', 19.99, 60, 'soccer_ball.jpg', TRUE),
(4, 'Sac de sport', 'Compartiment chaussures inclus.', 34.99, 35, 'sport_bag.jpg', TRUE),
(4, 'Gourde Inox', 'Isotherme, 750ml.', 15.99, 90, 'water_bottle.jpg', TRUE);

-- Catégorie 5 : Livres
INSERT INTO produits (id_categorie, nom, description, prix, stock, image, disponible) VALUES
(5, 'Apprendre le SQL', 'Le guide complet pour débutants.', 25.00, 100, 'book_sql.jpg', TRUE),
(5, 'Roman Policier', 'Le mystère de la chambre jaune.', 12.99, 50, 'book_thriller.jpg', TRUE),
(5, 'Manga Tome 1', 'Aventure et action.', 7.99, 200, 'manga_01.jpg', TRUE),
(5, 'Livre de Cuisine', '100 recettes faciles.', 19.99, 40, 'cook_book.jpg', TRUE),
(5, 'Développement Web', 'HTML, CSS, JS et PHP.', 35.50, 60, 'web_dev.jpg', FALSE);


--Au minimum 5 clients
INSERT INTO clients (nom, prenom, adresse, email, mdp) VALUES
('Dupont', 'Jean', '10 Rue de la Paix, Paris', 'jean.dupont@email.com', '$2y$10$hash'),
('Martin', 'Sophie', '25 Avenue du Général Leclerc, Lyon', 'sophie.martin@email.com', '$2y$10$hash'),
('Bernard', 'Lucas', '5 Impasse des Lilas, Bordeaux', 'lucas.bernard@email.com', '$2y$10$hash'),
('Petit', 'Emma', '120 Boulevard Haussmann, Paris', 'emma.petit@email.com', '$2y$10$hash'),
('Moreau', 'Thomas', '8 Rue de la Plage, Nice', 'thomas.moreau@email.com', '$2y$10$hash');

SELECT * FROM clients;

-- Au minimum 10 commandes avec leurs lignes
INSERT INTO commandes (id_client, status, montant_total, adresse_livraison) VALUES
(1, 'livree', 919.98, '10 Rue de la Paix, Paris'),      
(2, 'expediee', 59.98, '25 Avenue du Général Leclerc, Lyon'), 
(3, 'payee', 1299.50, '5 Impasse des Lilas, Bordeaux'),    
(1, 'en_attente', 34.99, '10 Rue de la Paix, Paris'),      
(4, 'annulee', 89.99, '120 Boulevard Haussmann, Paris'),   
(5, 'livree', 524.00, '8 Rue de la Plage, Nice'),          
(2, 'payee', 19.99, 'Bureau: 12 Rue du Travail, Lyon'),    
(3, 'en_attente', 49.99, '5 Impasse des Lilas, Bordeaux'), 
(5, 'expediee', 224.98, '8 Rue de la Plage, Nice'),        
(1, 'en_attente', 75.00, 'Maison Vacances, Biarritz');

SELECT * FROM commandes;

-- Commande 1 : Smartphone (id 1) + Souris (id 4)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(1, 1, 'Smartphone Galaxy X', 1, 899.99, 899.99),
(1, 4, 'Souris Gamer', 1, 59.90, 59.90);

-- Commande 2 : Haltères (id 17)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(2, 17, 'Haltères 5kg', 2, 29.99, 59.98);

-- Commande 3 : Laptop (id 2)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(3, 2, 'Laptop Pro 15', 1, 1299.50, 1299.50);

-- Commande 4 : Sac de sport (id 19)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(4, 19, 'Sac de sport', 1, 34.99, 34.99);

-- Commande 5 : Tapis Salon (id 13)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(5, 13, 'Tapis Salon', 1, 89.99, 89.99);

-- Commande 6 : Canapé (id 11) + Plante (id 15)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(6, 11, 'Canapé 3 places', 1, 499.00, 499.00),
(6, 15, 'Plante artificielle', 1, 35.00, 35.00);

-- Commande 7 : Livre de Cuisine (id 24)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(7, 24, 'Livre de Cuisine', 1, 19.99, 19.99);

-- Commande 8 : Jean Slim (id 7)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(8, 7, 'Jean Slim Noir', 1, 49.99, 49.99);

-- Commande 9 : Casque (id 3) + Tapis Yoga (id 16)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(9, 3, 'Casque Audio Sans Fil', 1, 199.99, 199.99),
(9, 16, 'Tapis de Yoga', 1, 24.99, 24.99);

-- Commande 10 : Apprendre le SQL (id 21)
INSERT INTO inclure (id_commande, id_produit, produit_comm, quantite, prix_unite, prix_sous_tot) VALUES
(10, 21, 'Apprendre le SQL', 3, 25.00, 75.00);


-- Au minimum 2 administrateurs (dont 1 super_admin)
INSERT INTO admins (username, email, mdp, roles) VALUES
('SuperAdmin', 'admin@toto.com', '$Motdepassehashe129838', 'super_admin'),
('Gestionnaire', 'manager@toto.com', 'Motdepassehashe129838', 'admin');

SELECT * FROM admins;