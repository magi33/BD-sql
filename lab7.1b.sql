SELECT Produs.Nume AS NumeProdus,
       COUNT(Oferte.CodP) AS NumarOferte,
       COUNT(Cerere.CodP) AS NumarCereri
FROM Produs
LEFT JOIN Oferte ON Produs.CodP = Oferte.CodP
LEFT JOIN Cerere ON Produs.CodP = Cerere.CodP
GROUP BY Produs.Nume;
