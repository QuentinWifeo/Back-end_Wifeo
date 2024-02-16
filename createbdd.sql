-- Table pour les sections principales
CREATE TABLE sections (
    id SERIAL PRIMARY KEY,
    editMode BOOLEAN,
    name VARCHAR(255),
    template_id VARCHAR(255),
    section_type VARCHAR(255),
    backgroundColor VARCHAR(255),
    color VARCHAR(255),
    title TEXT,
    subtitle TEXT
);

-- Table pour les logos
CREATE TABLE logos (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    navlink VARCHAR(255),
    pictureLink VARCHAR(255),
    alt TEXT
);

-- Table pour les images générales
CREATE TABLE pictures (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    pictureLink VARCHAR(255),
    alt TEXT,
    alignment VARCHAR(50)
);

-- Table pour les boutons
CREATE TABLE buttons (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    color VARCHAR(255),
    content TEXT
);

-- Table pour les illustrations
CREATE TABLE illustrations (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    topLeft VARCHAR(255),
    topRight VARCHAR(255),
    bottomRight VARCHAR(255),
    bottomLeft VARCHAR(255)
);

-- Table pour les contenus (blocks de texte)
CREATE TABLE contents (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    subtitle TEXT,
    content TEXT
);

-- Table pour les listes de contenus
CREATE TABLE contents_list (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    content TEXT
);

-- Table pour les cartes de témoignages
CREATE TABLE cards (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    comment TEXT,
    name VARCHAR(255),
    job VARCHAR(255)
);

-- Table pour les menus
CREATE TABLE menus (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    text VARCHAR(255),
    link VARCHAR(255)
);

-- Table pour les réseaux sociaux
CREATE TABLE socials (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    logo VARCHAR(255),
    link VARCHAR(255)
);

-- Table pour les séparateurs
CREATE TABLE separators (
    id SERIAL PRIMARY KEY,
    section_id INTEGER REFERENCES sections(id),
    top_pictureLink VARCHAR(255),
    top_alt TEXT,
    top_backgroundColor VARCHAR(255),
    bottom_pictureLink VARCHAR(255),
    bottom_alt TEXT,
    bottom_backgroundColor VARCHAR(255)
);