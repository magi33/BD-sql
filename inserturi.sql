
INSERT INTO Furnizor (IDFurnizor, Nume, Oras)
VALUES (1, 'AutoMax', 'Cluj-Napoca'),
       (2, 'BestComputers', 'Bucuresti'),
       (3, 'AlphaAuto', 'Arad');

INSERT INTO Produs (IDProdus, Nume, Categorie)
VALUES (1, 'Dacia Duster', 'automobile'),
       (2, 'Laptop Lenovo', 'calculatoare'),
       (3, 'HP Pavilion', 'calculatoare');

INSERT INTO Beneficiar (IDBeneficiar, Nume, Oras)
VALUES (1, 'SC Tech Solutions SRL', 'Bucuresti'),
       (2, 'ClujIT SRL', 'Cluj-Napoca'),
       (3, 'DigitalNet', 'Bucuresti');

INSERT INTO Oferta (IDOferta, IDFurnizor, IDProdus, Pret, Categorie)
VALUES (1, 1, 1, 15000, 'automobile'),
       (2, 2, 2, 3200, 'calculatoare'),
       (3, 2, 3, 2800, 'calculatoare');

INSERT INTO Cerere (IDCerere, IDBeneficiar, IDProdus, Cantitate, Pret, Data)
VALUES (1, 1, 1, 2, 14500, '2014-06-15'),
       (2, 2, 2, 5, 3100, '2014-08-10'),
       (3, 3, 3, 3, 2700, '2014-09-12'),
       (4, 1, 2, 1, 3200, '2015-01-05');
