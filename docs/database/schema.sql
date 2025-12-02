CREATE TABLE categories(
   id_categorie SERIAL,
   nom VARCHAR(100) NOT NULL,
   description TEXT NOT NULL,
   image VARCHAR(255),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(id_categorie)
);

CREATE TABLE produits(
   id_produit SERIAL,
   nom VARCHAR(100) NOT NULL,
   description TEXT NOT NULL,
   prix DECIMAL(10,2) NOT NULL CHECK (prix >= 0),
   stock INT NOT NULL CHECK (stock >= 0),
   image VARCHAR(100),
   disponible BOOLEAN,
   id_categorie INT NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(id_produit),
   CONSTRAINT fk_produits_categories 
        FOREIGN KEY (id_categorie) 
        REFERENCES categories(id_categorie)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE clients(
   id_client SERIAL,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   adresse VARCHAR(255) NOT NULL,
   email VARCHAR(100) NOT NULL,
   mdp VARCHAR(255) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(id_client),
   UNIQUE(email)
);

CREATE TABLE commandes(
   id_commande SERIAL,
   status VARCHAR(100) NOT NULL,
   montant_total DECIMAL(10,2) NOT NULL CHECK (montant_total >= 0),
   adresse_livraison VARCHAR(255) NOT NULL,
   id_client INT NOT NULL,
   PRIMARY KEY(id_commande),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   CONSTRAINT fk_commandes_clients 
        FOREIGN KEY (id_client) 
        REFERENCES clients(id_client)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE admins(
   id_admins SERIAL,
   username VARCHAR(100) NOT NULL,
   email VARCHAR(255) NOT NULL,
   mdp VARCHAR(255) NOT NULL,
   roles VARCHAR(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(id_admins),
   UNIQUE(username),
   UNIQUE(email)
);

CREATE TABLE inclure(
   id_produit INT,
   id_commande INT,
   produit_comm VARCHAR(100) NOT NULL,
   quantite INT NOT NULL CHECK (quantite > 0),
   prix_unite DECIMAL(10,2) NOT NULL CHECK (quantite > 0),
   prix_sous_tot DECIMAL(10,2) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(id_produit, id_commande),
   CONSTRAINT fk_inclure_commandes 
        FOREIGN KEY (id_commande) 
        REFERENCES commandes(id_commande)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
        
    CONSTRAINT fk_inclure_produits 
        FOREIGN KEY (id_produit) 
        REFERENCES produits(id_produit)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);
