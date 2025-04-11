-- Creează tabelul Furnizor
CREATE TABLE Furnizor (
    IDFurnizor INT PRIMARY KEY,
    Nume VARCHAR(100),
    Oras VARCHAR(100)
);

-- Creează tabelul Produs
CREATE TABLE Produs (
    IDProdus INT PRIMARY KEY,
    Nume VARCHAR(100),
    Categorie VARCHAR(100)
);

-- Creează tabelul Beneficiar (există deja, doar dacă vrei să-l refaci)
-- CREATE TABLE Beneficiar (
--     IDBeneficiar INT PRIMARY KEY,
--     Nume VARCHAR(100),
--     Oras VARCHAR(100)
-- );

-- Creează tabelul Oferta
CREATE TABLE Oferta (
    IDOferta INT PRIMARY KEY,
    IDFurnizor INT FOREIGN KEY REFERENCES Furnizor(IDFurnizor),
    IDProdus INT FOREIGN KEY REFERENCES Produs(IDProdus),
    Pret DECIMAL(10,2),
    Categorie VARCHAR(100)
);

-- Creează tabelul Cerere (există deja, așa că nu-l recreăm dacă e deja acolo)
-- Doar dacă trebuie refăcut:
-- CREATE TABLE Cerere (
--     IDCerere INT PRIMARY KEY,
--     IDBeneficiar INT FOREIGN KEY REFERENCES Beneficiar(IDBeneficiar),
--     IDProdus INT FOREIGN KEY REFERENCES Produs(IDProdus),
--     Cantitate INT,
--     Pret DECIMAL(10,2),
--     Data DATE
-- );
