-- S1
ELECT DISTINCT Oras
FROM Furnizor
WHERE Nume LIKE 'A%';

SELECT DISTINCT f.Nume
FROM Furnizor f
JOIN Oferta o ON f.IDFurnizor = o.IDFurnizor
JOIN Produs p ON o.IDProdus = p.IDProdus
WHERE f.Oras = 'Cluj-Napoca' AND p.Categorie = 'automobile';

SELECT Nume
FROM Beneficiar
WHERE Oras = 'Bucuresti'
ORDER BY Nume;

SELECT b.Nume AS NumeBeneficiar, b.Oras, p.Nume AS Produs
FROM Cerere c
JOIN Beneficiar b ON c.IDBeneficiar = b.IDBeneficiar
JOIN Produs p ON c.IDProdus = p.IDProdus;

SELECT DISTINCT 
    f.Nume AS NumeFurnizor,
    b.Nume AS NumeBeneficiar,
    p.Nume AS Produs,
    c.Cantitate,
    c.Pret,
    c.Data
FROM Cerere c
JOIN Beneficiar b ON c.IDBeneficiar = b.IDBeneficiar
JOIN Produs p ON c.IDProdus = p.IDProdus
JOIN Oferta o ON p.IDProdus = o.IDProdus
JOIN Furnizor f ON o.IDFurnizor = f.IDFurnizor
WHERE f.Oras = 'Cluj' AND b.Oras = 'Bucuresti'
ORDER BY f.Nume, b.Nume, p.Nume, c.Pret;


SELECT f.Nume, COUNT(*) AS NrOferte
FROM Furnizor f
JOIN Oferta o ON f.IDFurnizor = o.IDFurnizor
JOIN Produs p ON o.IDProdus = p.IDProdus
WHERE f.Oras = 'Bucuresti' AND p.Categorie = 'calculatoare'
GROUP BY f.Nume;

SELECT b.Nume, AVG(c.Pret * c.Cantitate) AS ValoareMedie
FROM Cerere c
JOIN Beneficiar b ON c.IDBeneficiar = b.IDBeneficiar
JOIN Produs p ON c.IDProdus = p.IDProdus
JOIN Oferta o ON p.IDProdus = o.IDProdus
JOIN Furnizor f ON o.IDFurnizor = f.IDFurnizor
WHERE b.Oras = 'Cluj-Napoca' AND f.Oras = 'Bucuresti' AND YEAR(c.Data) = 2014
GROUP BY b.Nume;

SELECT p.Nume AS Produs, MIN(o.Pret) AS PretMinim, f.Nume AS Furnizor, f.Oras
FROM Produs p
JOIN Oferta o ON p.IDProdus = o.IDProdus
JOIN Furnizor f ON o.IDFurnizor = f.IDFurnizor
GROUP BY p.Nume, f.Nume, f.Oras
HAVING o.Pret = MIN(o.Pret);

SELECT TOP 1 f.Nume, COUNT(*) AS NrCalculatoare
FROM Furnizor f
JOIN Oferta o ON f.IDFurnizor = o.IDFurnizor
JOIN Produs p ON o.IDProdus = p.IDProdus
WHERE f.Oras = 'Cluj-Napoca' AND p.Categorie = 'calculatoare'
GROUP BY f.Nume
ORDER BY NrCalculatoare DESC;

SELECT b.Nume, COUNT(*) AS NrTranzactii
FROM Cerere c
JOIN Beneficiar b ON c.IDBeneficiar = b.IDBeneficiar
GROUP BY b.Nume
HAVING COUNT(*) >= 3;
