USE tifosi;

-- TABLE marque
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

-- TABLE boisson
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- TABLE ingredient
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

-- TABLE focaccia
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE,
    prix DECIMAL(5,2) NOT NULL
);

-- TABLE menu
CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);

-- TABLE client
CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    code_postal INT NOT NULL
);

-- TABLE achat (client achète une focaccia)
CREATE TABLE achat (
    id_client INT NOT NULL,
    id_focaccia INT NOT NULL,
    date_achat DATE NOT NULL,
    PRIMARY KEY (id_client, id_focaccia, date_achat),
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- TABLE focaccia_ingredient (composition)
CREATE TABLE focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);
